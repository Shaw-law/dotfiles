#Theme
eval "$(starship init zsh)"

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/bshaw/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/themes/zsh/zsh/zsh.sh
###########################################################################################
#Developments
###########################################################################################
export PATH=~/Development/clang/bin:$PATH
export JAVA_HOME=~/Development/Java/jdk-11/
export PATH=$JAVA_HOME/bin/:$PATH
export PATH=~/Development/cmake/bin:$PATH
export PATH=~/Development/node/bin/:$PATH
export PATH=~/.scritps/:$PATH
export PATH=~/Development/:$PATH
#===========================================================================================
#Aliases
#===========================================================================================
alias ls="exa"
alias cat="bat"
alias vim="nvim"
alias emacs="emacs -nw"
EDITOR=vim
##############################################################################################
#				ZSH_SYNATX							     #
##############################################################################################
