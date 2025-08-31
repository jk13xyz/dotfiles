{

  description = "NixOS configuration";
  
    inputs = {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
      nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";
      nixos-hardware.url = "github:nixos/nixos-hardware/master";
      home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
      };

      firefox-addons = {
        url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
        inputs.nixpkgs.follows = "nixpkgs";
      };

      hyprland = {
        url = "github:hyprwm/Hyprland";
      };

      nur = {
        url = "github:nix-community/NUR";
      };

      lanzaboote = {
        url = "github:nix-community/lanzaboote";
      };

      agenix = {
	url = "github:ryantm/agenix";
        inputs.nixpkgs.follows = "nixpkgs";
        inputs.darwin.follows = "";
      };
     
    };

  outputs = { self, nixpkgs, nixpkgs-stable, agenix, home-manager, hyprland, lanzaboote, nur, ... }@inputs: 
    let
      system = "x86_64-linux";
      username = "jens";
      pkgsForSystem = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };

      lib = nixpkgs.lib;

    in {
      nixosConfigurations = {
        nix-pad  = lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/nix-pad/configuration.nix
            agenix.nixosModules.default
            home-manager.nixosModules.home-manager
            hyprland.nixosModules.default
            lanzaboote.nixosModules.lanzaboote
            nur.modules.nixos.default
            {
              home-manager.users.${username} = import ./home/nix-pad/home.nix;
	      home-manager.useUserPackages = true;
	      home-manager.extraSpecialArgs = { inherit inputs; };
            }
	    {
	      environment.systemPackages = [
		agenix.packages.${system}.default
	      ];
	    }
          ];
        };

        nix-server  = lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/nix-server/configuration.nix
            agenix.nixosModules.default
            home-manager.nixosModules.home-manager
            lanzaboote.nixosModules.lanzaboote
            {
              home-manager.users.${username} = import ./home/nix-server/home.nix;
            }
          ];
        };
      };

      homeConfigurations = {
        "jens@nix-pad" = lib.homeManagerConfiguration {
          useGlobalPkgs = true;
          useUserPackages = true;
        };
        extraSpecialArgs = {
          inherit inputs;
        };
      };
  };
}
