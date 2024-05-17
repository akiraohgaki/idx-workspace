{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [
    #pkgs.sudo
    pkgs.zsh
    pkgs.openssh
    #pkgs.curl
    #pkgs.wget
    pkgs.zip
    #pkgs.unzip
    pkgs.nano
    #pkgs.vim
    #pkgs.git
    #pkgs.jq
    pkgs.gcc
    pkgs.gnumake
    pkgs.automake
    pkgs.cmake
    pkgs.python311
    pkgs.python311Packages.pip
  ];
  env = {};
  idx = {
    extensions = [];
    previews = {
      enable = true;
      previews = {
        web = {
          command = ["bash" ".idx/webpreview.sh"];
          manager = "web";
          env = {
            PORT = "$PORT";
          };
        };
      };
    };
    workspace = {
      onCreate = {
        setup = "bash .idx/setup.sh";
      };
      onStart = {
        startup = "bash .idx/startup.sh";
      };
    };
  };
}
