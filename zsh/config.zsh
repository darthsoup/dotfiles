## Base zsh

# base exports

export DOTFILES="$HOME/.dotfiles"
export EDITOR="vim"
export VEDITOR="code"
export BROWSER="chrome"

# add Paths

export PATH="$HOME/bin:$PATH";
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

# i like my internals in english

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Enable colors

autoload -U colors && colors
export CLICOLOR=1

# Init completion and autotab

zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
	compinit
done
compinit -C



# history

HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTSIZE=2000
export HISTFILESIZE=5000
export HISTIGNORE="ls:cd:clear:exit:history:pwd:date:* --help"

setopt EXTENDED_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt COMPLETE_ALIASES

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

# alerts
setopt NO_BG_NICE
setopt NO_HUP
setopt NO_BEEP

# Tipz

TIPZ_TEXT='💡 '

# nvm (node)

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

