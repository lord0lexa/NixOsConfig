.PHONY: build update gc rs

rs:
	sudo nix-env --delete-generations +5
	echo Please run gc next

build:
	sudo nixos-rebuild switch --flake .#gworlpad

update:
	which nix
	nix --version
	nix --extra-experimental-features 'nix-command flakes' flake update
	sudo NIXPKGS_ALLOW_UNFREE=1 nixos-rebuild switch --flake .#gworlpad 

gc:
	sudo nix-collect-garbage -d
