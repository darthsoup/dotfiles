# Store plugins outside the dotfiles repo
zstyle ':znap:' repos-dir ~/.local/share/zsh/plugins

source ~/.local/share/zsh/znap/znap.zsh  # Start Znap

# general stuff
znap source zsh-users/zsh-autosuggestions
znap source zdharma-continuum/fast-syntax-highlighting
znap source rupa/z
znap source mafredri/zsh-async

if [[ $(uname) == "Darwin" ]]; then
	znap eval iterm2 'curl -fsSL https://iterm2.com/shell_integration/zsh'
fi

eval "$(fnm env --use-on-cd --shell zsh)"
