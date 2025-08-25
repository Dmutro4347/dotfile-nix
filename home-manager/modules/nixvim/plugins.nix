{
  plugins = {
    lualine.enable = true;      # Status line
    nvim-tree.enable = true;    # File tree
    treesitter.enable = true;   # Syntax highlighting & code parsing
    web-devicons.enable = true; # Icons for treesitter
    bufferline.enable = true;   # Bufferline for neovim 
    dashboard.enable = true;
    # === Navigation & Search ===
    telescope.enable = true;    # File and text search

    # === Git Integration ===
    gitsigns.enable = true;     # Git signs in the gutter

    # === Autocompletion ===
    cmp.enable = true;          # Completion engine
    luasnip.enable = true;      # Snippet engine

    # === LSP ===
    lsp.enable = true;          # Language server protocol support

    # === Debugging ===
    dap.enable = true;          # Debug Adapter Protocol
    dap-ui.enable = true;       # Debugging UI

    # === Extras ===
    which-key.enable = true;    # Keymap hints
    comment.enable = true; # Commenting utility
    vim-surround.enable = true;     # Text objects surround
    toggleterm.enable = true;
    colorizer.enable = true;
    tmux-navigator.enable = true;

  };
}

