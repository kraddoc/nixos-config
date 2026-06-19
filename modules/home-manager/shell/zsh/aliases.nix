{ config, pkgs, ... }:

{
  programs.zsh.shellAliases = {
    ll = "ls -l";
    switch = "nh os switch";
    update = "nh os switch -u";
    ".." = "z ..";
    "..." = "z ../..";
    "...." = "z ../../..";
    "....." = "z ../../../..";
    cd = "z";
  };
}
