{
    flake.modules.nixos.base = {
        services.openssh.enable = true;
    };

    flake.modules.homeManager.base = {
        programs.ssh = {
	    enable = true;
	    enableDefaultConfig = false;
	    settings."*" = {
                AddKeysToAgent = "yes";
	    };
	};

	services.ssh-agent.enable = true;
    };
}
