let
  nix-pad = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBeQY6CTxKBOJWgxmKVuc2iSVwhC/HA6TiYlRcDBKbHH jens@nix-pad";
in
{
  "nix-pad.age" = {
    publicKeys = [ nix-pad ];
    identityPaths = [ "/home/jens/.ssh/id_ed25519" ];
    armor = true;
  };
}
