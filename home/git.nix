{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "lord0lexa";
    userEmail = "lexi.zwinger@gmail.com";
    settings = {
      init.defaultBranch = "main";
    };
  };
}
