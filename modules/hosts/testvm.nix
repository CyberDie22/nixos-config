{ config, inputs, ... }:
let
  m = config.flake.modules;
in
{
  flake.nixosConfigurations.testvm = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      m.nixos.base
      m.nixos.workstation
      ./_hardware/testvm.nix
      {
        networking.hostName = "testvm";
        time.timeZone = "America/Los_Angeles";
        i18n.defaultLocale = "en_US.UTF-8";
        nixpkgs.hostPlatform = "x86_64-linux";
        system.stateVersion = "26.05";

        services.qemuGuest.enable = true;
        services.spice-vdagentd.enable = true;
      }
    ];
  };
}
