{
    flake.modules.nixos.base = { pkgs, ... }: {
        programs.zsh.enable = true;
        users.users.benbuzard.shell = pkgs.zsh;
    };

    flake.modules.homeManager.base = { pkgs, ... }: {
        programs.zsh = {
            enable = true;
            autosuggestion.enable = true;
            shellAliases.ll = "ls -lah";
        };
    };
}
