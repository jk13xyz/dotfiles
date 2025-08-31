{ config, lib, pkgs, ... }:

{
  home = {
    username = lib.mkDefault "jens";
    homeDirectory = lib.mkDefault "/home/${config.home.username}";
    packages = with pkgs; [
    ];
    stateVersion = lib.mkDefault "25.05";
    sessionVariables = {
      XDG_RUNTIME_DIR = "/run/user/$UID";
    };
  };

  programs.home-manager.enable = true;

  imports = [
    ../../dotfiles/alacritty/default.nix
    ../../dotfiles/firefox/default.nix
    ../../dotfiles/git/default.nix
    ../../dotfiles/gpg/default.nix
    ../../dotfiles/hyprland/config.nix
    ../../dotfiles/hyprland/hyprpaper/default.nix
    ../../dotfiles/neofetch/default.nix
    ../../dotfiles/waybar/default.nix
    ../../dotfiles/zsh
  ];
}
