{ config, pkgs, ...}:
{
  imports = [
	./base.nix
	./git.nix
	./firefox.nix
  ];
  home = {
    #packages = with pkgs; [];

    username = "alex";
    homeDirectory = "/home/alex";

    stateVersion = "25.11";
  };

  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
}
