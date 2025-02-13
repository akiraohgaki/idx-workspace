{ pkgs, ... }: {
  channel = "unstable";

  packages = [
    pkgs.openssh
    pkgs.nano
    pkgs.deno
    pkgs.nodejs_latest
  ];

  env = { };

  idx = {
    extensions = [
      "denoland.vscode-deno"
      "EditorConfig.EditorConfig"
      "foxundermoon.shell-format"
      "runem.lit-plugin"
    ];

    #previews = {
    #  enable = true;
    #  previews = {
    #    web = {
    #      command = ["deno" "task" "serve" "--port=$PORT"];
    #      manager = "web";
    #    };
    #  };
    #};

    workspace = {
      onCreate = {
        setup = "bash .idx/setup.sh";
      };
      #onStart = { };
    };
  };
}
