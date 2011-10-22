#
# ~/.bashrc
#

# xev = keyboard keypress check

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Exports
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export EDITOR="VIM"










# Aliases
alias pacman='sudo pacman'
alias svim='sudo vim'
alias uppc='sudo pacman -Syu'
alias p='pacman '
alias pR='pacman -Rs $(pacman -Qqtd)'
alias find='sudo find / -name'
alias peQ='p -Qqet'
alias peR='p -Qqdt'

# Alias corrections
alias pacan='pacman'
alias ppacan='pacman'
alias paacan='pacman'
alias paccan='pacman'
alias pacaan='pacman'
alias pacann='pacman'
alias pacma='pacman'
alias pacmn='pacman'
alias paman='pacman'
alias pcman='pacman'
alias acman='pacman'
alias pamcan='pacman'
alias pacmna='pacman'
alias pacamn='pacman'
alias paacmn='pacman'
alias apcman='pacman'
alias paacmn='pacman'




