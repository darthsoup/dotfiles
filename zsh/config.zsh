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

# history
setopt EXTENDED_HISTORY
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
