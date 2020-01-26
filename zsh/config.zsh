# colors
autoload -U colors
colors
export CLICOLOR=1

# cd movement
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# glob
setopt extendedglob
unsetopt nomatch
