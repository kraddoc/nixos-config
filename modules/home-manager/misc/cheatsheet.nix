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
      
      ## System Management
      - `switch`           : `nh os switch` (rebuild system)
      - `update`           : `nh os switch -u` (update & rebuild)
    '';
  };
}
