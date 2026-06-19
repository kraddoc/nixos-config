{ config, pkgs, ... }:

{
  programs.zsh.shellAliases = {
    l = "eza";
    ls = "eza -l";
    lsa = "eza -al";
    cat = "bat";
    man = "batman";
    switch = "nh os switch";
    update = "nh os switch -u";
    ".." = "z ..";
    "..." = "z ../..";
    "...." = "z ../../..";
    "....." = "z ../../../..";
    cd = "z";
    ps = "procs";
    pst = "procs -t";
    df = "duf";
    cc = "clear";
  };
}
