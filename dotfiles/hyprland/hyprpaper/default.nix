{config, ...}:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = true;
      splash = false;
      wallpaper = "eDP-1,/home/jens/.config/hypr/wallpaper.jpg";
    };
  };
}
