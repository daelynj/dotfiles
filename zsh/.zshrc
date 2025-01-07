alias gcan="gc --amend --no-edit"
alias gref="git reflog"

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"

ZSH_THEME="robbyrussell"

KEYTIMEOUT=1

xset r rate 200 60

plugins=(git zsh-history-substring-search ssh-agent)

source $ZSH/oh-my-zsh.sh

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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export MAVEN_USER="daelynj"
export MAVEN_TOKEN=""
export NODE_AUTH_TOKEN=""

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias seam-admin='java -jar ~/.local/bin/saaslink-admin.jar'
