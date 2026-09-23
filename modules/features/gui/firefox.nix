{
  flake.modules.homeManager.workstation = { pkgs, ... }: {
    programs.firefox = {
      enable = true;

      languagePacks = [ "en-US" ];
    };
  };
}
