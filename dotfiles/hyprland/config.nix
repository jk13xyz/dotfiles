{ config, pkgs, ...  }:

{
  xdg.configFile."hypr/hyprland.conf".source = ./hyprland.conf;

  home.sessionVariables = {
    WLR_NO_HARDWARE_CURSOR = "1";
    NIXOS_OZONE_WL = "1";
  };

}
