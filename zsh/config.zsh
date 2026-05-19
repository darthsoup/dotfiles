## Base zsh

# base exports

export DOTFILES="$HOME/.dotfiles"
export EDITOR="nvim"
export VEDITOR="code"
export BROWSER="chrome"

# add Paths

export COMPOSER_HOME="$HOME/.composer"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

# NVM

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


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
setopt SHARE_HISTORY
setopt COMPLETE_ALIASES

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
