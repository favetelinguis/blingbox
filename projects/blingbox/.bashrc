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

export EDITOR=helix
