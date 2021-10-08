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

# config
alias sshconf="vim ~/.ssh/config"
alias sshpublickey="cat ~/.ssh/id_rsa.pub"
alias vimrc="vim ~/.vimrc"
alias hosts="sudo $EDITOR /etc/hosts"

# network
alias onlineip="curl https://diagnostic.opendns.com/myip ; echo"

# php
alias composer7.4='php7.4 /usr/local/bin/composer'
alias composer8.0='php8.0 /usr/local/bin/composer'
alias phpunit="vendor/bin/phpunit"
alias phpstan="vendor/bin/phpstan"
alias cu="composer update"
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# php (laravel)
alias artisan="php artisan"
alias artisanfresh="artisan clear-compiled && artisan cache:clear && artisan route:clear && artisan config:clear && artisan view:clear && composer dumpautoload"

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
