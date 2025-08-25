{ lib, ... }:
let
  inherit (lib.nixvim) mkRaw;
in
{
  plugins.dashboard = {
    enable = true;
    settings = {
      theme = "doom";
      config = {
        vertical_center = true;
        week_header.enable = true;
        center = [
            { icon = "  "; desc = "Find File"; action = "Telescope find_files"; }
            { icon = "  "; desc = "New File"; action = "enew"; }
            { icon = "  "; desc = "Recent Files"; action = "Telescope oldfiles"; }
            { icon = "󰈞  "; desc = "Search Text"; action = "Telescope live_grep"; }
          ];
        packages.enable = false;
        project.enable = false;
        shortcut = [ ];
        mru = {
          cwd_only = true;
          limit = 5;
        };
        footer = [ "" "" ];
      };
    };
  };
}
