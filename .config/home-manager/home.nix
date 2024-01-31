{ config, pkgs, ... }:
{
  targets.genericLinux.enable = true;

  home = {
    username = "shikiyo";
    homeDirectory = "/home/shikiyo";
    stateVersion = "23.11";

    sessionPath = [
      "${config.home.sessionVariables.sexe}/bin"
      "$HOME/.local/bin"
      "$HOME/code/cutils/outbin"
    ];

    sessionVariables = {
      HOME = config.home.homeDirectory;
      sexe = "${config.home.sessionVariables.HOME}/selfinstalled";
      zigstd = "${config.home.sessionVariables.sexe}/zig/lib/std";

      EDITOR = "hx";

      XKB_DEFAULT_LAYOUT = "br";
    };

    shellAliases = {
      ls = "ls --color=auto";

      v = "$EDITOR";

      rm = "mv -t /tmp/";
      urm = "/bin/rm";

      # Nix stuff
      ns = "/nix/var/nix/profiles/default/bin/nix-shell --pure";
      nsi = "/nix/var/nix/profiles/default/bin/nix-shell";
      nd = "/nix/var/nix/profiles/default/bin/nix develop";
    };
  };

  home.packages = with pkgs; [
    tree
    slides
  ];

  programs = {
    home-manager.enable = true;

    bash = {
      enable = true;

      shellAliases = {
      };
      initExtra = ''
        function ndi() {
          nd -i $@ --command $SHELL --norc
        }

        [ -f "$HOME/.prompt.sh" ] && . "$HOME/.prompt.sh"

        [[ $(tty) = '/dev/tty1' ]] && river

        [ -f "$HOME/dotfiles/dotconfig.sh" ] && . "$HOME/dotfiles/dotconfig.sh"
      '';
    };

    git = {
      enable = true;

      extraConfig = {
        core = {
          editor = config.home.sessionVariables.EDITOR;
        };

        user = {
          name = "Shikiyo";
          email = "shikiyo@archjk";
        };

        init = {
          defaultBranch = "main";
        };

        pull = {
          rebase = false;
        };
      };
    };
  };

  xdg.enable = true;
}
