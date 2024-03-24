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

test -s ~/.alias && . ~/.alias || true
alias dotfiles='/usr/bin/git --git-dir=$HOME/x-dot --work-tree=$HOME'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/quix/x-conda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/quix/x-conda/etc/profile.d/conda.sh" ]; then
        . "/home/quix/x-conda/etc/profile.d/conda.sh"
    else
        export PATH="/home/quix/x-conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

