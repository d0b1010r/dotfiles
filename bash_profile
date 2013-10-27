#!/bin/bash

# colors
GREEN="\[\033[0;32m\]"
GREY="\[\033[0;30m\]"
LIGHTGREY="\[\033[0;37m\]"
RESET="\[\033[0m\]"
CYAN="\[\033[1;36m\]"

# prompt
TIME='\[\e[01;30m\]\t'
STATUS='`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`'
GITINFO='`[[ $(git status 2> /dev/null | head -n2 | tail -n1) != "# Changes to be committed:" ]] && echo "\[\e[31m\]" || echo " \[\e[33m\]"``[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] || echo "\[\e[32m\]"`$(__git_ps1 " (%s)\[\e[00m\]")'
ICON="🚀  "
PS1="$STATUS $TIME $CYAN\W$GITINFO $ICON$RESET"

# colorize!
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# aliases
alias ll="ls -al"

export EDITOR=vim

# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# deploy
function deploytojboss() { cp "$1" "$JBOSS_HOME/standalone/deployments"; }

# server
function serve() { # via https://gist.github.com/1525217
    local host=`hostname`
    local port="${1:-8888}"
    (sleep 1 && open "http://${host}:${port}/")&
    python -m SimpleHTTPServer "$port"
}
