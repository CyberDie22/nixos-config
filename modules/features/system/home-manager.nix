{
    flake.modules.nixos.base = {
        home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            backupFileExtension = "bak";
        };
    };
}
