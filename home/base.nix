{ config, pkgs, ...}:
{
  home.sessionVariables = {
  };

  home.file.".mozilla/firefox/profiles.ini".force = true;

  home.packages = with pkgs; [
	signal-desktop
	anki-bin
	spotify
	firefox
	curl
	gnumake
	bitwarden-desktop
	obsidian
	vscode
	steam
	jetbrains.idea
	virtualbox
	vim
	pdfstudio2024
	ghidra
	calibre
  ];
}
