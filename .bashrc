#
# ~/.bashrc
#

export sexe=$HOME/selfinstalled
export zigstd=$sexe/zig/lib/std
PATH=$sexe/bin:$PATH
PATH+=:$HOME/.local/bin

# XDG stuff
export XDG_CONFIG_HOME="$HOME/.config/"

# XKB stuff
export XKB_DEFAULT_LAYOUT="br"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -la --color=auto'
alias v='nvim'
alias rm='mv -t /tmp/'
alias urm='/bin/rm'
PS1='[\u@\h \W]\$ '

# If tty == 1, run sway
[[ $(tty) = '/dev/tty1' ]] && sway

# dotfiles
[ -f "$HOME/dotfiles/dotconfig.sh" ] && . "$HOME/dotfiles/dotconfig.sh"

# ghcup-env
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

# elan
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.elan/env"
