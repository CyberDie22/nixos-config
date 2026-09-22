{
    flake.modules.nixos.base = { pkgs, ... }: {
        environment.systemPackages = with pkgs; [
            neovim
            wget
        ];
    };
}
