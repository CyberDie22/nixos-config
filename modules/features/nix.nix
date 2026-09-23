{
  flake.modules.nixos.base = {
    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  perSystem = { pkgs, ... }: {
    formatter = pkgs.nixfmt-tree;
  };
}
