 { config, ... }:

 {
 
  time.timeZone = "Europe/Zurich";
  i18n.defaultLocale = "de_CH.UTF-8";

  services.xserver.xkb = {
    layout = "ch";
    variant = "de_nodeadkeys";
  };

  console.keyMap = "sg";

 }
