#!/usr/bin/env bash

# Unix
alias mkdir="mkdir -p"
alias mv='mv -v'
alias rm='rm -i'
alias cp='cp -v'

# changedirectory shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# listing
alias l="ls -CF"
alias la="ls -A"
alias ll="ls -alF"

# config
alias sshconf='vim ~/.ssh/config'
alias vimrc='vim ~/.vimrc'
alias hosts='sudo $EDITOR /etc/hosts'

# network
alias localip-wired="ipconfig getifaddr en1"
alias localip-wireless="ipconfig getifaddr ap1"
