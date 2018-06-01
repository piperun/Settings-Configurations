#
# ~/.bashrc
#

# xev = keyboard keypress check

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# Exports
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export EDITOR="VIM"
export TERM=xterm-256color


# Aliases

# Archlinux
alias pacman='sudo pacman'               # Archlinux
alias svim='sudo vim'                    
alias uppc='sudo pacman -Syu'            # Archlinux command to upgrade system, packages, tree
alias p='pacman '                        # Archlinux 
alias pR='pacman -Rs $(pacman -Qqtd)'    # Archlinux command to find orphans           



# Debian

alias purgepkgs='dpkg --get-selections | grep deinstall | awk '{print $1}' | xargs sudo apt-get --dry-run purge'
