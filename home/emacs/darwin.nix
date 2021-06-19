{ pkgs, config, ... }:
let
  emacs-src = config.sources.emacs-nativecomp;
  emacs-darwin-base = pkgs.emacsGcc.override {
    srcRepo = true;
    nativeComp = true;
  };
in
{
  imports = [ ./default.nix ];

  emacs = pkgs.emacsMacport;
}
