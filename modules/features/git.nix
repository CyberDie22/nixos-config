{
    flake.modules.nixos.base = {
        programs.git.enable = true;
    };

    flake.modules.homeManager.base = {
        programs.git = {
            enable = true;
            settings = {
	    	user = {
                    name = "Ben";
                    email = "65131969+CyberDie22@users.noreply.github.com";
                };
		gpg = {
		    format = "ssh";
		};
	    };
	    signing = {
	        key = "~/.ssh/id_ed25519.pub";
		signByDefault = true;
	    };
        };
    };
}
