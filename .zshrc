# Set promt

setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt adam1

# Initialize completion
autoload -U compinit
compinit -D

# add Paths
export PATH="$HOME/bin:$PATH";
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

# Load the shell dotfiles
for file in ~/zsh/{exports,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
