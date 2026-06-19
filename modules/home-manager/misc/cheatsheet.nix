{ config, pkgs, ... }:

{
  home.file.".config/cheatsheet.md" = {
    text = ''
      ## Cheatsheet
      - `cheat`            : Display this cheatsheet
      - `cheat -s`         : Search cheatsheet with fzf
    
      ## Git Commands
      - `gacp "message"`   : Add all, commit, and push
      - `gac "message"`    : Add all and commit (no push)
      - `gs`               : Git statu
      
      ## Navigation
      - `z part/of/path`   : Jump to a frequently used directory
      - `..`               : Go up one directory
      - `...`              : Go up two directories, etc.
      
      ## NixOS Management
      - `nxsw`             : `nh os switch` (rebuild system)
      - `nxupd`            : `nh os switch -u` (update & rebuild)
      - `nxcl`             : `nh clean all --keep 5` (clean generations)

      ## System Management
      - `ps`               : process list visualizer using procs
      - `pst`              : process tree visualizer procs
      - `btm`              : process/system visualizer
      - `df`               : disk usage visualizer using duf
      - `du`               : directory disk usage visualizer using dust
      
      ## Tools
      - `ripgrep`          : grep alternative
      - `sd`               : sed alternative
      - `fd`               : find alternative
    '';
  };
}
