#!/usr/bin/env bash
# Claude Code status line: model | context bar | git | rate limits | duration
# Consumes the JSON payload on stdin. See https://code.claude.com/docs/en/statusline
set -o pipefail
input=$(cat)

# ANSI
C_MODEL=$'\033[36m'; C_DIM=$'\033[90m'
C_GREEN=$'\033[32m'; C_YELLOW=$'\033[33m'; C_RED=$'\033[31m'; C_RESET=$'\033[0m'
sep="${C_DIM} │ ${C_RESET}"

pct_color() {          # green <60, yellow <85, red otherwise
  local p=$1
  if   (( p < 60 )); then printf '%s' "$C_GREEN"
  elif (( p < 85 )); then printf '%s' "$C_YELLOW"
  else                    printf '%s' "$C_RED"; fi
}

num() {                # strip decimals; non-numeric -> 0
  local v=${1%.*}
  [[ $v =~ ^-?[0-9]+$ ]] && printf '%s' "$v" || printf '0'
}

# One jq pass, one field per line. Read line-by-line (not IFS-split) so empty
# fields (e.g. absent rate_limits) stay aligned with their variable and don't
# shift later fields. Works on bash 3.2 (no mapfile/readarray required).
{
  IFS= read -r model
  IFS= read -r ctx
  IFS= read -r rl5
  IFS= read -r rl7
  IFS= read -r ms
  IFS= read -r session
  IFS= read -r cwd
} < <(
  printf '%s' "$input" | jq -r '
    (.model.display_name // ""),
    (.context_window.used_percentage // 0),
    (.rate_limits.five_hour.used_percentage // ""),
    (.rate_limits.seven_day.used_percentage // ""),
    (.cost.total_duration_ms // 0),
    (.session_id // "nosession"),
    (.workspace.current_dir // .cwd // "")
  ' 2>/dev/null
)

segments=()

# 1. model
[[ -n $model ]] && segments+=("${C_MODEL}${model}${C_RESET}")

# 2. context bar
ctx=$(num "$ctx")
filled=$(( (ctx + 5) / 10 )); (( filled > 10 )) && filled=10; (( filled < 0 )) && filled=0
bar=""; for ((i=0;i<10;i++)); do (( i < filled )) && bar+="█" || bar+="░"; done
segments+=("$(pct_color "$ctx")${bar} ${ctx}%${C_RESET}")

# 3. git (cached per session, 5s TTL)
[[ -n $cwd ]] && cd "$cwd" 2>/dev/null
git_seg=""; cache="${TMPDIR:-/tmp}/claude-statusline-git-${session}"
now=$(date +%s); cache_ok=0
if [[ -f $cache ]]; then
  mtime=$(stat -f %m "$cache" 2>/dev/null || stat -c %Y "$cache" 2>/dev/null || echo 0)
  IFS= read -r cached_cwd < "$cache"
  if (( now - mtime < 5 )) && [[ $cached_cwd == "$cwd" ]]; then
    git_seg=$(sed -n '2p' "$cache"); cache_ok=1
  fi
fi
if (( ! cache_ok )); then
  if git rev-parse --git-dir >/dev/null 2>&1; then
    branch=$(git branch --show-current 2>/dev/null)
    [[ -z $branch ]] && branch=$(git rev-parse --short HEAD 2>/dev/null)
    dirty=$(git status --porcelain 2>/dev/null | grep -c .)
    ahead=$(git rev-list --count '@{u}..HEAD' 2>/dev/null)
    behind=$(git rev-list --count 'HEAD..@{u}' 2>/dev/null)
    marks=""
    (( dirty > 0 )) && marks+=" +${dirty}"
    [[ -n $ahead  && $ahead  -gt 0 ]] && marks+=" ↑${ahead}"
    [[ -n $behind && $behind -gt 0 ]] && marks+=" ↓${behind}"
    gcol=$C_GREEN; [[ -n $marks ]] && gcol=$C_YELLOW
    git_seg="${gcol}${branch}${marks}${C_RESET}"
  fi
  { printf '%s\n' "$cwd"; printf '%s\n' "$git_seg"; } > "$cache" 2>/dev/null
fi
[[ -n $git_seg ]] && segments+=("$git_seg")

# 4. rate limits (Pro/Max only; omit if absent)
rl=""
if [[ -n $rl5 ]]; then rl5=$(num "$rl5"); rl+="$(pct_color "$rl5")5h ${rl5}%${C_RESET}"; fi
if [[ -n $rl7 ]]; then rl7=$(num "$rl7"); [[ -n $rl ]] && rl+=" "; rl+="$(pct_color "$rl7")7d ${rl7}%${C_RESET}"; fi
[[ -n $rl ]] && segments+=("$rl")

# 5. session duration
secs=$(( $(num "$ms") / 1000 ))
if   (( secs < 60 ));   then dur="${secs}s"
elif (( secs < 3600 )); then dur="$(( secs / 60 ))m"
else                         dur="$(( secs / 3600 ))h $(( (secs % 3600) / 60 ))m"; fi
segments+=("${C_DIM}${dur}${C_RESET}")

# join + print (single line, no trailing newline)
out=""
for i in "${!segments[@]}"; do (( i > 0 )) && out+="$sep"; out+="${segments[$i]}"; done
printf '%s' "$out"
