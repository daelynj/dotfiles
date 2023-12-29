alias python=python3
alias pip=pip3

alias gcan="gc --amend --no-edit"
alias gref="git reflog"

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"

ZSH_THEME="robbyrussell"

KEYTIMEOUT=1

xset r rate 200 60

plugins=(git zsh-history-substring-search ssh-agent)

source $ZSH/oh-my-zsh.sh

alias python="/usr/bin/python3.10"

bindkey -v

bindkey "^P" history-substring-search-up   
bindkey "^N" history-substring-search-down

v() {
  if [[ -z $1 ]]; then
    FILE=$(fdfind | fzy) && vim "$FILE"
  else
    vim $*
  fi
}

if [ -f ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
