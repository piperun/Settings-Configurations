#
# ~/.bashrc
#

# xev = keyboard keypress check

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



OS=$(uname -o)
case $OS in
     *'BSD')
     kernel='BSD'     
     ;;
     *'Linux')
      kernel='Linux'
     ;;
     *'DragonFly')
      kernel='DragonFly'
     ;;
     *'Darwin')
      kernel='OS X'
     ;;
esac

case $kernel in
	'Linux')
      		if [ -f /etc/os-release ]; then
				distrib_id=$(awk -F'=' '/^ID/{print $2}' /etc/os-release 2>/dev/null)
				if [ "$distrib_id" == "frugalware" ]; then distro="Frugalware"; fi
			fi
			if [ -f /etc/debian_version ]; then distro="Debian"; fi
			if grep -i ubuntu /etc/lsb-release >/dev/null 2>&1; then distro="Ubuntu"; fi
			if grep -i SolusOS /etc/issue >/dev/null 2>&1; then distro="SolusOS"; fi
			if grep -i mint /etc/lsb-release >/dev/null 2>&1; then
				if grep -i debian /etc/lsb-release >/dev/null 2>&1; then distro="LMDE"
				else distro="Mint"; fi
			fi
			if [ -f /etc/arch-release ]; then distro="Arch Linux"; fi
			if [ -f /etc/chakra-release ]; then distro="Chakra"; fi
			if [ -f /etc/fedora-release ] && grep -q "Fedora" /etc/fedora-release; then distro="Fedora"; fi
			if [ -f /etc/redhat-release ] && grep -q "Red Hat" /etc/redhat-release; then distro="Red Hat Linux"; fi
			if [ -f /etc/slackware-version ]; then distro="Slackware"; fi
			if [ -f /etc/SuSE-release ]; then distro="openSUSE"; fi
			if [ -f /etc/mageia-release ]; then distro="Mageia"; fi
			if [ -f /etc/mandrake-release ]; then distro="Mandrake"; fi
			if [ -f /etc/mandriva-release ]; then distro="Mandriva"; fi
			if [ -f /etc/crunchbang-lsb-release ]; then distro="CrunchBang"; fi
			if [ -f /etc/gentoo-release ]; then distro="Gentoo"; fi
			if [ -f /usr/share/doc/tc/release.txt ]; then distro="TinyCore"; fi
			if [ -f /etc/frugalware-release ]; then distro="Frugalware"; fi
			if [ -f /etc/issue ] && grep -q "LinuxDeepin" /etc/issue; then distro="LinuxDeepin"; fi
			if [ -f /etc/issue ] && grep -q "SolusOS" /etc/issue; then distro="SolusOS"; fi
			if [ -f /etc/issue ] &&  grep -q "Parabola GNU/Linux-libre" /etc/issue; then distro="ParabolaGNU/Linux-libre"; fi
      ;;
	'BSD')
      		if [ -f /var/run/dmesg.boot ] && grep -o "NetBSD" /var/run/dmesg.boot; then distro="NetBSD"; fi
		    if [ -f /var/run/dmesg.boot ] && grep -o "OpenBSD" /var/run/dmesg.boot; then distro="OpenBSD"; fi
            if [ -f /var/run/dmesg.boot ] && grep -o "FreeBSD" /var/run/dmesg.boot; then distro="FreeBSD"; fi
        ;;
    'DragonFly')
			if [ -f /var/run/dmesg.boot ] && grep -om 1 "DragonFly" /var/run/dmesg.boot; then distro="DragonFlyBSD"; fi
       ;;        	
esac

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

# Set Global aliases here
alias find='sudo find / -name' 

case $distro in
	'FreeBSD')

# Aliases
alias fbsdufetch='freebsd-update fetch'
alias fbsdu='freebsd-update'

# Alias correction

# Make
alias mke='make'
alias mae='make'
alias mak='make'
alias ake='make'

# freebsd-update
alias reebsd-update='freebsd-update'
alias feebsd-update='freebsd-update'
alias frebsd-update='freebsd-update'
alias freesd-update='freebsd-update' 
alias freebd-update='freebsd-update' 
alias freebs-update='freebsd-update' 
alias freebsdupdate='freebsd-update' 
alias freebsd-pdate='freebsd-update' 
alias freebsd-udate='freebsd-update' 
alias freebsd-upate='freebsd-update' 
alias freebsd-updte='freebsd-update' 
alias freebsd-updae='freebsd-update' 
alias freebsd-updat='freebsd-update' 
alias eebsd-update='freebsd-update' 
alias febsd-update='freebsd-update' 
alias frbsd-update='freebsd-update' 
alias fresd-update='freebsd-update' 
alias freed-update='freebsd-update' 
alias freeb-update='freebsd-update' 
alias freebsupdate='freebsd-update' 
alias freebsdpdate='freebsd-update' 
alias freebsd-date='freebsd-update' 
alias freebsd-uate='freebsd-update' 
alias freebsd-upte='freebsd-update' 
alias freebsd-upde='freebsd-update'
alias reebsdupdate='freebsd-update' 
alias feebsdupdate='freebsd-update' 
alias frebsdupdate='freebsd-update' 
alias frebsdupdate='freebsd-update' 
alias freesdupdate='freebsd-update' 
alias freebdupdate='freebsd-update' 
alias freebsupdate='freebsd-update' 
alias freebsdpdate='freebsd-update' 
alias freebsdudate='freebsd-update' 
alias freebsdupate='freebsd-update' 
alias freebsdupdte='freebsd-update' 
alias freebsdupdae='freebsd-update' 
alias freebsdupdat='freebsd-update' 
alias freebsd-update='freebsd-update' 
alias freebsd-update='freebsd-update' 
alias freebsd-update='freebsd-update' 
alias freebsd-update='freebsd-update' 
alias freebsd-update='freebsd-update' 
alias freebsd-update='freebsd-update' 
alias freebsd-update='freebsd-update' 
alias freebsd-update='freebsd-update' 
alias freebsd-update='freebsd-update'
      ;;
      'Archlinux')
      ;;
# Archlinux
alias pacman='sudo pacman'               # Archlinux
alias svim='sudo vim'                    
alias uppc='sudo pacman -Syu'            # Archlinux command to upgrade system, packages, tree
alias p='pacman '                        # Archlinux 
alias pR='pacman -Rs $(pacman -Qqtd)'    # Archlinux command to find orphans           

# Alias correction 
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
    ;;



