{ ... }:
{
  imports = [
    ./base
    ./emacs/darwin.nix
  ];

  home = {
    username = "paritosh";
    homeDirectory = "/Users/paritosh";

    sessionPath = [
      "/bin"
      "/usr/bin"
      "/usr/local/bin"

      "/sbin"
      "/usr/sbin"
      "/usr/local/sbin"

    ];

# Set the env variables for the shell session
    sessionVariables = {

      HOME_MANAGER_CONFIG = "${toString ./macbook-m1.nix}";
    };
  };

  programs.git = {
    ignores = [ ".DS_Store" ];

    userEmail = "paritosh.desai@gmail.com";
  };
}
