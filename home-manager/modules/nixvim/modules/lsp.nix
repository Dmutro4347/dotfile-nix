{
  config = {
    # Enable LSP (Language Server Protocol) support
    plugins.lsp = {
      enable = true;

      # LSP servers for different languages
      servers = {
        pyright.enable = true;   # Python
        clangd.enable = true;    # C++
        bashls.enable = true;    # Bash
        nil_ls.enable = true;    # Nix
        html.enable = true;      # HTML
        cssls.enable = true;     # CSS
        ts_ls.enable = true;     # JavaScript / TypeScript
      };
    };

    # Linters & formatters via none-ls
    plugins.none-ls = {
      enable = true;
      sources = {
        formatting = {
          black.enable = true;        # Python formatter
          clang_format.enable = true; # C++ formatter
          shfmt.enable = true;        # Bash formatter
#          prettier.enable = true;     # Web formatter (HTML, CSS, JS, TS)
          nixpkgs_fmt.enable = true;  # Nix formatter
        };
        diagnostics = {
          pylint.enable = true;  # Python linter
          statix.enable = true;  # Nix linter
        };
      };
    };

    # UI enhancements for LSP
    # plugins.fidget.enable = true;        # Show LSP progress
    plugins.lspkind.enable = true;       # VSCode-like icons in completion
    plugins.lsp-signature.enable = true; # Show function signature hints
  };
}

