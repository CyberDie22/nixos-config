{
    flake.modules.homeManager.workstation = {
        programs.ghostty = {
            enable = true;
            systemd.enable = true;
            enableZshIntegration = true;
        };
    };
}
