{ homeStateVersion, user, ...}: {
	imports = [
		./home-packages.nix
		./modules
	];
	home = {
		username="arfors";
		homeDirectory = "/home/arfors";
		stateVersion = "25.05";
	};
}
