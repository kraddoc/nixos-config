{ config, pkgs, ... }:

{
  programs.zsh.shellAliases = {
    ll = "ls -l";
    edit = "sudo -e";
    update = "nh os switch";
  };
}
