
source ~/zsh/znap/znap.zsh  # Start Znap

# themes
znap prompt sindresorhus/pure

# general stuff
# znap source marlonrichert/zsh-autocomplete # currently testing
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
znap source rupa/z
znap source mafredri/zsh-async
# znap source molovo/tipz

# znap source ohmyzsh/ohmyzsh \
#    'lib/(*~(git|theme-and-appearance).zsh)' plugins/git

if [[ `uname` == "Darwin" ]]; then
	znap eval iterm2 'curl -fsSL https://iterm2.com/shell_integration/zsh'
fi
