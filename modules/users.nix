{ config, inputs, ... }:
let
  hm = config.flake.modules.homeManager;
in
{
  flake.modules.nixos.base = { pkgs, ... }: {
    imports = [ inputs.home-manager.nixosModules.home-manager ];
    users.users.benbuzard = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      shell = pkgs.zsh;
    };
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      backupFileExtension = "bak";
      users.benbuzard = {
        imports = [ hm.base ];
        home.stateVersion = "26.05";
      };
    };
  };
}
