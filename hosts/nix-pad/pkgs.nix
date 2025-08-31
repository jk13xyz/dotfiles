{ pkgs, ...}:
{
    environment.systemPackages = with pkgs; [
        wget
        pkgs.age
        pkgs.brightnessctl
        pkgs.clipman
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
        pkgs.xdg-desktop-portal-hyprland
        pkgs.zip 
        pkgs.unzip
	pkgs.waybar
        pkgs.wofi        
        yubikey-personalization
        yubikey-manager
    ];
}
