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
      "mhutchie.git-graph"
      "EditorConfig.EditorConfig"
      "foxundermoon.shell-format"
      "denoland.vscode-deno"
      "dbaeumer.vscode-eslint"
      "esbenp.prettier-vscode"
      "Orta.vscode-jest"
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
      onStart = { };
    };
  };
}
