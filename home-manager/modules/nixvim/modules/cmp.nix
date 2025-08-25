{
  config = {
    plugins.cmp = {
      enable = true;
     settings = {
         completion = {
    autocomplete = false;
  };
  
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-n>" = "cmp.mapping.select_next_item()";

          "<Tab>" = ''
            function(fallback)
              local luasnip = require("luasnip")
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              else
                fallback()
              end
            end
          '';

          "<S-Tab>" = ''
            function(fallback)
              local luasnip = require("luasnip")
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end
          '';
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
        };
        formatting = {
          fields = [ "kind" "abbr" "menu" ];
          lspkind = {
            enable = true;
            mode = "symbol_text";
            maxwidth = 60;
            ellipsis_char = "…";
            menu = {
              nvim_lsp = "[LSP]";
              luasnip = "[Snip]";
              buffer = "[Buf]";
              path = "[Path]";
            };
          };
        };
        window = {
          documentation = { border = "rounded"; };
          completion = { border = "rounded"; };
        };
        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          { name = "buffer"; }
          { name = "path"; }
          { name = "calc"; }
          { name = "emoji"; }
        ];

        experimental = {
          ghost_text = true;
        };
      };
    };

    plugins.luasnip.enable = true;
    plugins.lspkind.enable = true;
  };
}
