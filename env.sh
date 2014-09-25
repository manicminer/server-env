#!/bin/bash

GIT_AUTHOR_NAME='Tom Bamford'
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"

GIT_AUTHOR_EMAIL='tom@atplanet.co.za'
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

export GIT_AUTHOR_NAME GIT_COMMITTER_NAME GIT_AUTHOR_EMAIL GIT_COMMITTER_EMAIL

alias git='git -c alias.co="git checkout"'
alias grep='grep --color'
alias vi=vim
alias view='vim -R'

# Determine best editor
for E in vim vi nano; do
  if which $E 2>/dev/null 1>/dev/null; then
    export EDITOR=$E
    break
  fi
done

# Colours for less and manpages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Ansible cow-free zone
export ANSIBLE_NOCOWS=1
