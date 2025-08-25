{ pkgs, ... }: {
	programs.firefox.enable = true;
	environment.systemPackages = with pkgs; [
     		vim
     		wget
        zsh
     		ranger
     		git
     		tmux
     		ntfs3g
     		htop
     		home-manager
   	];
}
