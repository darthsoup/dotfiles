# colors
autoload -U colors
colors
export CLICOLOR=1

# prompt
autoload -U promptinit; promptinit
PURE_CMD_MAX_EXEC_TIME=10
zstyle :prompt:pure:path color white
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
prompt pure

# cd movement
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# glob
setopt extendedglob
unsetopt nomatch

# history
setopt EXTENDED_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

# alerts
setopt NO_BG_NICE
setopt NO_HUP
setopt NO_BEEP

# Tipz
TIPZ_TEXT='💡 '
