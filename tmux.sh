#!/bin/bash

DIR=$(cd `dirname $0` && pwd)
TMUX_SOCK=tmux-tom

source "${DIR}/env.sh"
tmux -2 -L $TMUX_SOCK $*

#if [ -n "$*" ]; then
#  tmux -2 -L $TMUX_SOCK $*
#else
#  tmux new-session -2 -L $TMUX_SOCK -d -s tom
#  tmux set-option -L $TMUX_SOCK -g default-shell "bash --noprofile --rcfile ${DIR}/bashrc"
#  tmux attach -L $TMUX_SOCK -s tom
#fi

#if tmux -L $TMUX_SOCK list-sessions | grep -q '^tom:'; then
#  tmux attach -L $TMUX_SOCK
#else
#  tmux -2 -L $TMUX_SOCK -s tom
#fi
