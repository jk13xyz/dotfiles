{ pkgs, ... }:

{
  programs.gpg = {
    enable = true;
    publicKeys = [
        {
            source = ./secrets/jk13xyz.asc; trust = "ultimate";
        }
    ];
    settings = {
        default-key = "C577B6C556EF76FA78E1B271E2AFF28AB89D48EC";
        auto-key-locate = "local,wkd,keyserver";
        keyserver = "hkps://keys.openpgp.org";
        auto-key-retrieve = true;
        auto-key-import = true;
    };
  };

  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    pinentry = {
      package = pkgs.pinentry-curses;
    };
  };

}
