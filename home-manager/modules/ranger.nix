{
  programs.ranger = {
    enable = true;
    mappings = {
      e = "edit";

      ec = "compress";
      ex = "extract";

      b = "fzm";
    };

    settings = {
      preview_images = true;
      preview_images_method = "kitty";
      draw_borders = true;
      w3m_delay = 0;
    };

    extraConfig = ''
      default_linemode devicons2
    '';
  };

  home.file.".config/ranger/commands.py".text = "from plugins.ranger_udisk_menu.mounter import mount";
}
