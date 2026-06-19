{ config, pkgs, ... }:

{
  programs.zsh.shellAliases = {
    l = "eza";
    ls = "eza -l";
    lsa = "eza -al";
    cat = "bat";
    gst = "git status";
    nxsw = "nh os switch";
    nxupd = "nh os switch -u";
    nxcl = "nh clean all --keep 5";
    cd = "z";
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
