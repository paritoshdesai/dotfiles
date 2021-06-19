{ sources ? import ./nix/sources.nix
, pkgs    ? import sources.nixpkgs {}
}:
pkgs.mkShell rec {
  buildInputs = [ pkgs.cachix pkgs.niv pkgs.home-manager ];

# This will setup HOME_MANAGER_CONFIG to use appropriate target
# by default only supports Mac and Linux

  HOME_MANAGER_CONFIG =
    if pkgs.stdenv.isDarwin
    then toString ./home/macbook-m1.nix
    else toString ./home/linux.nix;
}
