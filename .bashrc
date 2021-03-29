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
distro = $(lsb_release -is)

# Set aliases for specific distribution
if [[ $distro == "Arch" ]]; then
    alias install='sudo pacman -S' 
    alias sync='pacman -Syy'
    alias search='pacman -Ss' 
    alias update='sudo pacman -Syyu' 
    alias aur='yay -S'
    alias aur-search='yay -Ss' 
fi