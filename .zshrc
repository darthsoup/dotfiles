#!/bin/zsh

# load plugins via Znap
source ~/zsh/plugins.zsh

# Load the shell dotfiles
for file in ~/zsh/{config,bindings,aliases}.zsh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

# completion
zstyle ':completion:*' completer _oldlist _expand _complete _match _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' insert-tab pending
zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select=2

