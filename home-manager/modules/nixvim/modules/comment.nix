{
  config = {
    plugins.comment = {
      enable = true;
      settings = {
        mappings = {
        toggle_line = "<leader>/";
        };
        opleader = { comment = "gc"; };
        extra = { above = "gcO"; below = "gco"; };
        toggler = { line = "gcc"; block = "gbc"; };
      };
    };
  };
}

