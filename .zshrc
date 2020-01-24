# Set promt

setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt grb

# Initialize completion
autoload -U compinit
compinit -D

# add Paths
export PATH="$HOME/bin:$PATH";
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

# Load the shell dotfiles
for file in ~/.zsh_{exports,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
