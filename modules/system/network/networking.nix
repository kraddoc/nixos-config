{ config, pkgs, ... }:

{
  networking.hostName = "irkalla"; 
  networking.networkmanager.enable = true;
  networking.wireless.enable = true; 

  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  
  
  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
}
