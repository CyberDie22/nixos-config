{
  flake.modules.nixos.workstation = {
    services.pipewire = {
      enable = true;
      pulse.enable = true;
    };

    security.rtkit.enable = true;

#     alsa = {
#       enable = true;
#       support32Bit = true;
#     };
  };
}
