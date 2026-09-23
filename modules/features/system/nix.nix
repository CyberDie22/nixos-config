{
  flake.modules.nixos.base = { config, ... }: {
    nix.settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      trusted-users = [ "@wheel" ];

      min-free = 5 * 1024 * 1024 * 1024;
      max-free = 20 * 1024 * 1024 * 1024;
    };
    nix.optimise.automatic = true;

    programs.nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep 5 --keep-since 7d";
      flake = "/home/benbuzard/Developer/nixos-config";
    };
  };
}
