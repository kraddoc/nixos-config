{ config, pkgs, ... }:

{
  imports = [
    ./users/nergal.nix
    ./home-manager.nix
    
    ./cli/default.nix
    ./shell/default.nix
    ./terminal/default.nix
    ./web/default.nix
  ];
}
