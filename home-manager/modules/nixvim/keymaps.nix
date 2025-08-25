{
  keymaps = [
    # Save file
    {
      mode = "n";
      key = "<C-s>";
      action = ":w!<CR>";
      options = { noremap = true; };
    }
    # Quit file
    {
      mode = "n";
      key = "<C-q>";
      action = ":q!<CR>";
      options = { noremap = true; };
    }

    # Toggle NvimTree
    {
      mode = "n";
      key = "<C-b>";
      action = ":NvimTreeToggle<CR>";
      options = { noremap = true; };
    }

    # Clear search highlight
    {
      mode = "n";
      key = ",<space>";
      action = ":nohlsearch<CR>";
      options = { noremap = true; };
    }
    {
      mode = "v";
      key = ",<space>";
      action = ":nohlsearch<CR>";
      options = { noremap = true; };
    }

    # Exit from insert mode using jk
    {
      mode = "i";
      key = "jk";
      action = "<esc>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-p>";
      action = ":Telescope find_files<CR>";
      options = { noremap = true; silent = true; };
    }
    # vertical split
    {
      mode = "n";
      key = "|";
      action = ":vsplit<CR>";
      options = { noremap = true; silent = true; };
    }
    # horizontal split
    {
      mode = "n";
      key = "-";
      action = ":split<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = ":wincmd h<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = ":wincmd j<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = ":wincmd k<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = ":wincmd l<CR>";
      options = { noremap = true; silent = true; };
    }
    # Resize windows (Ctrl+Arrow)
    {
      mode = "n";
      key = "<C-Up>";
      action = ":resize +2<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = ":resize -2<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = ":vertical resize -2<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = ":vertical resize +2<CR>";
      options = { noremap = true; silent = true; };
    }
    # === LSP keymaps ===
    {
      mode = "n";
      key = "gD";
      action = "<cmd>lua vim.lsp.buf.declaration()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "gd";
      action = "<cmd>lua vim.lsp.buf.definition()<CR> ";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "K";
      action = "<cmd>lua vim.lsp.buf.hover()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "gi";
      action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<cmd>lua vim.lsp.buf.signature_help()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<space>wa";
      action = "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<space>wr";
      action = "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<space>wl";
      action = "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<space>D";
      action = "<cmd>lua vim.lsp.buf.type_definition()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<space>rn";
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<space>ca";
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "gr";
      action = "<cmd>lua vim.lsp.buf.references()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<space>e";
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "[d";
      action = "<cmd>lua vim.diagnostic.goto_prev()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "]d";
      action = "<cmd>lua vim.diagnostic.goto_next()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<space>q";
      action = "<cmd>lua vim.diagnostic.set_loclist()<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<space>f";
      action = "<cmd>lua vim.lsp.buf.format()<CR>";
      options = { noremap = true; silent = true; };
    }
    # Telescope find files
    { mode = "n"; key = "<C-f>"; action = ":Telescope find_files<CR>"; options = { noremap = true; silent = true; }; }

    # Telescope live grep
    { mode = "n"; key = "<C-g>"; action = ":Telescope live_grep<CR>"; options = { noremap = true; silent = true; }; }

    # Telescope buffers
    { mode = "n"; key = "<space><Tab>"; action = ":Telescope buffers<CR>"; options = { noremap = true; silent = true; }; }

    # Term
    {
      mode = "n";
      key = "<space>t";
      action = ":ToggleTerm<CR>";
      options = { noremap = true; silent = true; };
    }
    {
      mode = "n";
      key = "<C-c>";
      action = ":new<CR>";
      options = { noremap = true; silent = true; };
    }
  ];
}
