# dir/files stuff
alias mkdir="mkdir -p"
alias rm="rm -i"

# directory shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias cd..="cd .." # fix my own mistake
alias projects="cd $HOME/code"

# listing
alias l="ls -CF"
alias la="ls -A"
alias ll="ls -alF"

# Helpers
alias df='df -h' # disk free, in Gigabytes
alias du='du -h -c' # calculate disk usage for a folder

# config
alias sshconf="vim ~/.ssh/config"
alias sshpublickey="cat ~/.ssh/id_rsa.pub"
alias vimrc="vim ~/.vimrc"
alias hosts="sudo $EDITOR /etc/hosts"

# network
alias onlineip="curl https://diagnostic.opendns.com/myip ; echo"

# php
alias php@7.4='$(brew --prefix php@7.4)/bin/php'
alias php@8.1='$(brew --prefix php@8.1)/bin/php'
alias composer@7.4='php@7.4 $(which composer)'
alias composer@8.1='php@8.1 $(which composer)'
alias phpunit="vendor/bin/phpunit"
alias phpstan="vendor/bin/phpstan"
alias cu="composer update"
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# php (laravel)
alias artisan="php artisan"
alias artisan-fresh="artisan clear-compiled && artisan cache:clear && artisan route:clear && artisan config:clear && artisan view:clear && composer dumpautoload"
alias tinker="php artisan tinker"

# Docker
alias d="docker"
alias dco='docker compose'
alias dcb='docker compose build'
alias dce='docker compose exec'
alias dcps='docker compose ps'
alias dcrestart='docker compose restart'
alias dcrm='docker compose rm'
alias dcr='docker compose run'
alias dcstop='docker compose stop'
alias dcup='docker compose up'
alias dcupb='docker compose up --build'
alias dcupd='docker compose up -d'
alias dcdn='docker compose down'
alias dcl='docker compose logs'
alias dclf='docker compose logs -f'
alias dcpull='docker compose pull'
alias dcstart='docker compose start'
alias dck='docker compose kill'

## Load custom system specific aliases
if [[ `uname` == "Linux" ]]; then
    source ~/zsh/aliases_linux.zsh

elif [[ `uname` == "Darwin" ]]; then
    source ~/zsh/aliases_osx.zsh
fi
