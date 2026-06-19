{ config, pkgs, ... }:

{
  programs.zsh.shellAliases = {
    ll = "ls -l";
  };
}
