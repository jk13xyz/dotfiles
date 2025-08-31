{ pkgs, ...  }:

{
  home.packages = with pkgs; [
    alacritty
  ];

  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal.family = "Fira Code Nerd Font";
	size = 14;
      };
      keyboard.bindings = [
	{ key = "Key5"; mods = "Alt"; chars = "["; }
	{ key = "Key6"; mods = "Alt"; chars = "]"; }
	{ key = "Key7"; mods = "Alt"; chars = "{"; }
	{ key = "Key0"; mods = "Alt"; chars = "}"; }
	{ key = "G";    mods = "Alt"; chars = "@"; }
      ];
    };
    theme = "monokai";
  };
}
