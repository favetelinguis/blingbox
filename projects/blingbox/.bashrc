# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

eval "$(direnv hook bash)"
eval "$(starship init bash)"

alias hx=helix
alias lll="br -sdph"
alias ll="br -sdh"

# use ctrl-z to toggle in and out of bg
if [[ $- == *i* ]]; then 
  stty susp undef
  bind '"\C-z":" fg\015"'
fi

# Replaces the need to zoxide etal
function j {
    br -c $1 $HOME
}

source /home/henriklarsson/blingbox/.config/broot/launcher/bash/br

# My git aliases
alias gg="br --git-status"
 # one-line log
alias gl="git log --pretty=format:'%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]' --decorate --date=short"

alias ga="git add"
alias gap="git add -p"
alias gc="git commit --verbose"
alias gca="git commit -a --verbose"
alias gcm="git commit -m"
alias gcam="git commit -a -m"
alias gm="git commit --amend --verbose"
alias gd="git diff"
alias gds="git diff --stat"
alias gdc="git diff --cached"
alias gs="git status -s"
alias gco="git checkout"
alias gcob="git checkout -b"
# list branches sorted by last modified
alias gb="git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"
# END my git aliases
