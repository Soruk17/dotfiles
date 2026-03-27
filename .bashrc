#
# ~/.bashrc
#
[[ $- == *i* ]] &&
  source -- ~/.local/share/blesh/ble.sh --attach=none --rcfile "$HOME/.config/.blerc"

set -o vi

mkcd () {
  mkdir $1 && cd $1
}


shopt -s autocd 
# Silencing autocd
silence_autocd() {
  exec {BASH_XTRACEFD}>/dev/null
}
silence_autocd
unsilence_autocd() {
  exec {BASH_XTRACEFD}>/dev/stdout
}
# Color definition
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
reset=$(tput sgr0)
# End
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; 
PS1='\[\e[38;5;45;1m\][\w\[\e[22m\]]\[\e[0m\] \[\e[38;5;200m\]@\[\e[38;5;135m\]${PS1_CMD1}\n\[\e[0m\] \[\e[38;5;248;1;2m\]\$\[\e[0m\] '


export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

source $HOME/.config/.git-prompt.sh

#User Defined Aliases
alias cl='clear'

[[ ! ${BLE_VERSION-} ]] || ble-attach

export PATH="$HOME/.local/bin:$PATH"
