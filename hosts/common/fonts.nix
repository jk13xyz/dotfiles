{ config, pkgs, fonts, ...  }:

{
  fonts.packages = with pkgs; [
    font-awesome
    noto-fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
  ];
}
