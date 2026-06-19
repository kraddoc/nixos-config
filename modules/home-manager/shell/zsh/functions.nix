{ config, pkgs, ... }:

{
  programs.zsh.initContent = 
    lib.mkOrder 1200 '''
      echo "Hello zsh initContent!"
    ''';
}
