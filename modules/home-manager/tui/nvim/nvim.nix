{ config, pkgs, inputs, ... }:

{
  imports = [ inputs.nvf.homeManagerModules.default ];
  
  programs.nvf = {
    enable = true;
    
    settings = {
      vim.viAlias = true;
      vim.vimAlias = true;
      vim.lsp = {
        enable = true;
      };
    };
  };
}
