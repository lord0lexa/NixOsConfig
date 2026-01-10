{
  description = "Alex's very own NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
  in {
    nixosConfigurations.gworlpad =
      nixpkgs.lib.nixosSystem {
        inherit system;

	modules = [
	  ./hosts/gworlpad/configuration.nix
	  ./hosts/gworlpad/hardware-configuration.nix

	  home-manager.nixosModules.home-manager
	  {
	    home-manager.users.alex =
	      import ./home/alex.nix;
	  }
	];
    };
  };
}
