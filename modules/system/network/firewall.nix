{ config, pkgs, ... }:

{
  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 6681 ];
  networking.firewall.allowedUDPPorts = [ 6681 ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
