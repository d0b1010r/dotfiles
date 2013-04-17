#!/bin/bash

#source ~/.git-completion.bash
#source ~/.git-prompt.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# colors
GREEN="\[\033[0;32m\]"
GREY="\[\033[0;30m\]"
LIGHTGREY="\[\033[0;37m\]"
RESET="\[\033[0m\]"
CYAN="\[\033[1;36m\]"

# prompt
GITINFO='$(__git_ps1 \[\033[34m\]\ [\%s]\[\033[0m\])'
ICON="🚀  "
PS1="$CYAN\W$RESET$GITINFO $ICON"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
