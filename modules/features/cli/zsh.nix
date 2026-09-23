{
  flake.modules.nixos.base = {
    programs.zsh = {
      enable = true;
      enableGlobalCompInit = false;
    };
  };

  flake.modules.homeManager.base = {
    programs.zsh = {
      enable = true;
      autosuggestion.enable = true;
      shellAliases.ll = "ls -lah";
    };
  };
}
