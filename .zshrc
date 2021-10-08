#!/bin/zsh

# Initialize completion
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
	compinit
done
compinit -C

# load antibody bundles
[ -f ~/zsh/bundles.sh ] && source ~/zsh/bundles.sh

# Load the shell dotfiles
for file in ~/zsh/{config,exports,aliases}.zsh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

# completion
zstyle ':completion:*' completer _oldlist _expand _complete _match _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' insert-tab pending
zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select=2

antibody_init() {
	sh ~/zsh/bundles_compile
	source ~/.zshrc
	echo ' Sourced zshrc'
}
