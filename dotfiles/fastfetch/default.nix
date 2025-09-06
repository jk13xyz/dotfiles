{ config, pkgs, ...  }:
{
  home = {
    packages = with pkgs; [
      pkgs.fastfetch
    ];
  };

  home.file.".config/fastfetch/config.jsonc".source = ./config.jsonc;
}
