#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -e /home/shikiyo/.nix-profile/etc/profile.d/nix.sh ]; then . /home/shikiyo/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
