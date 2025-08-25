{ pkgs, inputs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    # GUI apps
    jetbrains.pycharm-professional
    kitty
    obsidian
    pavucontrol
    spotify
    telegram-desktop
    virt-manager
    waypaper
    wofi

    # CLI apps
    inputs.nixvim-config.packages.${pkgs.system}.default
    bc
    brightnessctl
    cliphist
    docker
    gcc
    git
    grc
    htop
    killall
    microfetch
    ntfs3g
    pass
    playerctl
    python3
    qemu
    ranger
    ripgrep
    slurp
    swww
    tmux
    tree
    unzip
    wget
    jq
    wl-clipboard
    grimblast
  ];
}
