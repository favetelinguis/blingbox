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

if command -v direnv > /dev/null 2>&1; then
  eval "$(direnv hook bash)"
fi
if command -v zoxide > /dev/null 2>&1; then
    eval "$(zoxide init --cmd j bash)"
fi
if command -v starship > /dev/null 2>&1; then
    eval "$(starship init bash)"
fi
if command -v helix > /dev/null 2>&1; then
    alias hx=helix
    export EDITOR=helix
fi
if command -v lazygit > /dev/null 2>&1; then
    alias lg=lazygit
fi

source /home/henriklarsson/blingbox/.config/broot/launcher/bash/br
