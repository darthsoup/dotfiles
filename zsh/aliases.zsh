# dir/files stuff
alias mkdir="mkdir -p"
alias mv='mv -v'
alias rm='rm -i'
alias cp='cp -v'

# changedirectory shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias projects="cd $HOME/Projects"

# listing
alias l="ls -CF"
alias la="ls -A"
alias ll="ls -alF"

# config
alias sshconf='vim ~/.ssh/config'
alias sshpublickey='cat ~/.ssh/id_rsa.pub'
alias vimrc='vim ~/.vimrc'
alias hosts='sudo $EDITOR /etc/hosts'

# network
alias onlineip="curl https://diagnostic.opendns.com/myip ; echo"
alias localip-wired="ipconfig getifaddr en1"
alias localip-wireless="ipconfig getifaddr ap1"

# php
alias phpunit="vendor/bin/phpunit"
alias artisan="php artisan"
alias cu="composer update"
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# PHP Laravel
alias a="php artisan"
