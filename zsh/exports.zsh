export DOTFILES="$HOME/.dotfiles"
export EDITOR="vim"
export VEDITOR="code"
export BROWSER="chrome"

# add Paths
export PATH="$HOME/bin:$PATH";
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


## i like my internals in english
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

## history
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTSIZE=2000
export HISTFILESIZE=5000
export HISTIGNORE="ls:cd:clear:exit:history:pwd:date:* --help"
