# github.com/nQx1
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# general purpose aliases
alias ll='ls -lh'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Fetch distribution name, this requires lsb-release package to be installed
distro=$(lsb_release -is)

# Set aliases for specific distribution
case $distro in
    "Arch" | "Artix")
        alias install='sudo pacman -S' 
        alias sync='sudo pacman -Syy'
        alias search='pacman -Ss' 
        alias update='sudo pacman -Syyu' 
        alias aur-install='yay -S'
        alias aur-search='yay -Ss'
        ;;
    "Ubuntu" | "Debian" | "Mint")
        alias install='sudo apt install'
        alias update='apt update'
        alias upgrade='sudo apt upgrade'
        alias search='apt search'
        ;;
    "Fedora" | "Red Hat")
        alias install='sudo dnf install'
        alias update='sudo dnf update'
        alias upgrade='sudo dnf upgrade'
        alias search='dnf search'
        ;;
    "Void")
        alias install='sudo xbps-install'
        alias update='sudo xbps-install -Su'
        alias search='xbps-query -R'
        ;;
esac