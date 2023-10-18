bindkey -v

HISTFILE=~/.cache/zshhistfile
HISTSIZE=1000

export LANG=en_US.UTF-8

alias ls='exa'
alias vim='nvim'

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

eval "$(starship init zsh)"

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
