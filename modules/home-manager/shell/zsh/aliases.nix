{ config, pkgs, ... }:

{
  programs.zsh.shellAliases = {
    l = "eza";
    ls = "eza -l";
    lsa = "eza -al";
    cat = "bat";
    gst = "git status";
    switch = "nh os switch";
    update = "nh os switch -u";
    ".." = "z ..";
    "..." = "z ../..";
    "...." = "z ../../..";
    "....." = "z ../../../..";
    ps = "procs";
    pst = "procs -t";
    df = "duf";
    du = "dust";
    cc = "clear";
  };
}
