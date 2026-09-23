{ config, ... }:
let
  hm = config.flake.modules.homeManager;
in
{
  flake.modules.nixos.base = { pkgs, ... }: {
    users.users.benbuzard = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      shell = pkgs.zsh;
    };

    home-manager.users.benbuzard = {
      imports = [ hm.base ];
      home.stateVersion = "26.05";
    };
  };
}
