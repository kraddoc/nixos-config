{ config, pkgs, ... }:

{
  home.packages = with pkgs; {
    procs;
  };
  
  programs = {
    bottom = {
      enable = true;
      settings = {
        rate = "1s";
        temperature_type = "c";
      };
    };
    
    
  };
}
