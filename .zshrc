# Set promt

setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt adam1

# Initialize completion
autoload -U compinit
compinit -D

# Load the shell dotfiles
for file in ~/zsh/{config,exports,aliases}.zsh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
