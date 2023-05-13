#
# ~/.bashrc
#

export sexe=$HOME/selfinstalled
export zigstd=$sexe/zig/lib/std

# XDG stuff
export XDG_CONFIG_HOME="$HOME/.config/"

# XKB stuff
export XKB_DEFAULT_LAYOUT="br"

# Devkit pro
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC

# PATH
PATH=$sexe/bin:$PATH
PATH+=:$HOME/.local/bin
PATH=$PATH:$DEVKITPRO/tools/bin
PATH=$PATH:$DEVKITARM/bin

# EDITOR
export EDITOR='hx'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -la --color=auto'
alias v=$EDITOR
alias rm='mv -t /tmp/'
alias urm='/bin/rm'

alias ns='/nix/var/nix/profiles/default/bin/nix-shell --pure'
alias nd='/nix/var/nix/profiles/default/bin/nix develop'
function ndi() {
  nd -i $@ --command $SHELL --norc
}

PS1='[\u@\h \W]\$ '

# If tty == 1, run river
[[ $(tty) = '/dev/tty1' ]] && river

# If tty == 2, run sway
# [[ $(tty) = '/dev/tty2' ]] && sway

# dotfiles
[ -f "$HOME/dotfiles/dotconfig.sh" ] && . "$HOME/dotfiles/dotconfig.sh"

# ghcup-env
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

# elan
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.elan/env"
