export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

#DISABLE_AUTO_TITLE="true"

#ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# alacritty
#fpath+=${ZDOTDIR:-~}/.zsh_functions

# aliases
alias mongo="mongod --dbpath=$HOME/Documents/apps/mongodb/mongodb-data"
alias d="aria2c"
alias myip="curl checkip.dyndns.org"
alias vi="nvim"

export EDITOR=nvim
export NODE_PATH=`which node`

# pfetch env
export PF_INFO="ascii title os host kernel uptime pkgs memory shell editor wm"
export PF_COL1=3
export PF_COL2=6
export PF_COL3=1
