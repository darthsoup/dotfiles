changephp() {
    sudo update-alternatives --set php /usr/bin/php"$1"
}

#alias changephp="sudo update-alternatives --set php /usr/bin/php $1"

alias apti="sudo apt install"
alias aptr="sudo apt remove"
alias apts="sudo apt-cache search"
alias aptu="sudo apt update && sudo apt upgrade"
