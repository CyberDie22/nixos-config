{ config, inputs, ... }:
let hm = config.flake.modules.homeManager; in {
    flake.modules.nixos.base = {
        imports = [ inputs.home-manager.nixosModules.home-manager ];
        users.users.benbuzard = { isNormalUser = true; extraGroups = [ "wheel" ]; };
        home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.benbuzard = {
                imports = [ hm.base ];
                home.stateVersion = "26.05";
            };
        };
    };
}
