{ config, pkgs, lib, ... }:

{
  programs.zsh.initContent = lib.mkOrder 1000 ''
    # Quick git add, commit, and push
    gacp() {
      if [ -z "$1" ]; then
        echo "Usage: gacp \"Your commit message here\""
        return 1
      fi
      git add .
      git commit -m "$1"
      git push
    }

    # Quick git add and commit (without push)
    gac() {
      if [ -z "$1" ]; then
        echo "Usage: gac \"Your commit message here\""
        return 1
      fi
      git add .
      git commit -m "$1"
    }
    '';
}
