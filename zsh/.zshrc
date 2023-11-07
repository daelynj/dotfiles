alias python=python3
alias pip=pip3

alias gcan="gc --amend --no-edit"
alias gref="git reflog"

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"

ZSH_THEME="robbyrussell"

KEYTIMEOUT=1

alias cbr="cargo build && cargo run"

xset r rate 200 60

plugins=(git zsh-history-substring-search ssh-agent)

source $ZSH/oh-my-zsh.sh

alias python="/usr/bin/python3.10"

bindkey -v

bindkey "^P" history-substring-search-up   
bindkey "^N" history-substring-search-down

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

if [ -d "/usr/local/opt/ruby/bin" ]; then
  export PATH=/usr/local/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

v() {
  if [[ -z $1 ]]; then
    FILE=$(fdfind | fzy) && vim "$FILE"
  else
    vim $*
  fi
}

