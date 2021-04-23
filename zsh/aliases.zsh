# dir/files stuff
alias mkdir="mkdir -p"
alias rm="rm -i"

# changedirectory shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias cd..="cd .." # fix my own mistake
alias projects="cd $HOME/Projects"

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
alias localip-wired="ipconfig getifaddr en1"
alias localip-wireless="ipconfig getifaddr ap1"

# php
alias phpunit="vendor/bin/phpunit"
alias artisan="php artisan"
alias cu="composer update"
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# PHP Laravel
alias a="php artisan"

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

# update
alias brewupdate="brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup;"
