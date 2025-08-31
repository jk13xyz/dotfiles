{ pkgs, ...}:
{
    environment.systemPackages = with pkgs; [
        wget
        pkgs.age
        pkgs.brightnessctl
        pkgs.clipman
	pkgs.eza
        pkgs.grim
        pkgs.htop
        pkgs.mako
        pkgs.polkit
        pkgs.pavucontrol
        pkgs.pipewire
        pkgs.pulseaudio
	pkgs.rofi
        pkgs.ssh-to-age
        pkgs.slurp
        pkgs.swappy
        pkgs.swayidle
	pkgs.tmux
        pkgs.unzip
	pkgs.waybar
        pkgs.wofi
	pkgs.xdg-desktop-portal-hyprland
	pkgs.zip
	pkgs.zoxide
        yubikey-personalization
        yubikey-manager

	# Ham Radio

	pkgs.wsjtx
	pkgs.gridtracker
	pkgs.hamlib_4
	pkgs.hamrs
    ];
}
