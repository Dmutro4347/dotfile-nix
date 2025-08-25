{
  config = {
    colorschemes.ayu.enable = true;

    plugins = {
      treesitter = {
        settings = {
          ensure_installed = [
            "python"
            "lua"
            "json"
            "html"
            "css"
            "javascript"
            "bash"
            "cpp"
            "nix"
          ];
        };
      };
    };
  };
}

