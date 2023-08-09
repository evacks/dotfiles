export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

DISABLE_MAGIC_FUNCTIONS="true"
HIST_STAMPS="dd.mm.yyyy"

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

alias ls='exa'
alias vim='nvim'

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi


plugins=(git)
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
