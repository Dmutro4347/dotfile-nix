{
  programs.nixvim = {

    imports = [
    	./options.nix
      ./keymaps.nix
      ./plugins.nix
      ./modules
    ];
    enable = true;
    defaultEditor = true;
  };
}
