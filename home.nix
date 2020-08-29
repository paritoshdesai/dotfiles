{ config, pkgs, ... }:

let
  sources = import ./nix/sources.nix;
  sessionVariables = {
    EDITOR = "emacsclient --create-frame --alternate-editor emacs";
    PS1 = "λ x → \W>";
  };

  aspell-with-dicts = pkgs.aspellWithDicts (d: [d.en d.ru]);
in
{
  imports = [ ./emacs.nix ./firefox.nix ];

  nixpkgs.config = {
    allowUnfree = true;

    packageOverrides = pkgs: {
      stable = import sources."nixpkgs-20.03" {};
      nur = import sources.NUR {
        inherit pkgs;
      };
    };
  };

  home = {
    packages = with pkgs;
      [ aspell-with-dicts
        firefox
        git
        ghc
        niv
        spectacle
        synergy
        unzip
        zoom-us
      ];
    inherit sessionVariables;

    username = "tikhon";
    homeDirectory = "/home/tikhon";

    file = {
      "." = {
        source = ./home;
        recursive = true;
      };
    };

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage when
    # a new Home Manager release introduces backwards incompatible
    # changes.
    #
    # You can update Home Manager without changing this value. See the
    # Home Manager release notes for a list of state version changes
    # in each release.
    stateVersion = "20.09";
  };

  fonts.fontconfig.enable = true;

  programs = {
    home-manager.enable = true;

    bash = {
      enable = true;
      inherit sessionVariables;
    };

    git = {
      enable = true;
      ignores = [ "*~" ];

      userName = "tikhon";
      userEmail = "tikhon@jelv.is";

      extraConfig = {
        ui.color = "always";
        github.user = "TikhonJelvis";
        core.fileMode = false;
      };
    };
  };

  services = {
    dropbox = {
      enable = true;
      path = "${config.home.homeDirectory}/Dropbox";
    };
  };
}