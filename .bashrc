#
# ~/.bashrc
#

export sexe=$HOME/selfinstalled
PATH=$sexe/bin:$PATH
PATH+=:$HOME/.local/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -la --color=auto'
alias v='nvim'
PS1='[\u@\h \W]\$ '

# If tty == 1, run sway
[[ $(tty) = '/dev/tty1' ]] && sway

# dotfiles
[ -f "$HOME/dotfiles/dotconfig.sh" ] && . "$HOME/dotfiles/dotconfig.sh"

# ghcup-env
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"
