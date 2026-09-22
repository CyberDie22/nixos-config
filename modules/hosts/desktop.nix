{ config, inputs, ... }:
let m = config.flake.modules; in {
    flake.nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
        modules = [
            m.nixos.base
            m.nixos.workstation
            ./_hardware/desktop.nix
            {
                networking.hostName = "nixos";
                time.timeZone = "America/Los_Angeles";
                i18n.defaultLocale = "en_US.UTF-8";
                nixpkgs.hostPlatform = "x86_64-linux";
                system.stateVersion = "26.05";

                fileSystems = {
                    "/".options = [ "compress=zstd" "noatime" ];
                    "/home".options = [ "compress=zstd" "noatime" ];
                    "/nix".options = [ "compress=zstd" "noatime" ];
                    "/swap".options = [ "noatime" ];
                    "/boot".options = [ "fmask=0077" "dmask=0077" ];
                };
            }
        ];
    };
}
