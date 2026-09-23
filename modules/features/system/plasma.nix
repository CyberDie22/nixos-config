{
  flake.modules.nixos.workstation = { pkgs, ... }: {
    services.desktopManager.plasma6.enable = true;
    services.displayManager.plasma-login-manager.enable = true;

    xdg.portal = {
      enable = true;
      extraPortals = with pkgs; [
        kdePackages.xdg-desktop-portal-kde
      ];
    };
  };
}
