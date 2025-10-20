#==========================================#
#        My Nix Qtile Configuation         #
#==========================================#

{ config, pkgs, ... }:

{

#==========================================#
#           Qtile Window Manager           #
#==========================================#

services.xserver.enable = true;
services.xserver.displayManager.lightdm = {
		enable = true;
		autoLogin = {
			enable = true;
			user = "fuzzles";
			};
		};
services.xserver.windowManager.qtile = {
  		enable = true;
  		extraPackages = python3Packages: with python3Packages; [
    		qtile-extras
    		];
};
  
#==========================================#
#           System Packages                #
#==========================================#
environment.systemPackages = with pkgs; [
	rofi			# Application Launcher
	xfce.thunar		# File Manager
	xfce.thunar-volman
	xfce.thunar-vcs-plugin
	xfce.thunar-archive-plugin
	xfce.thunar-media-tags-plugin
	alacritty		# Terminal
	pavucontrol		# GUI PulseAudio
	alsa-utils		#
	pamixer
	blueman 		# Bluetooth (not fully working)
	flameshot 		# Screenshot Application
	copyq 			# Clipboard
	];

# fonts
fonts.packages = with pkgs; [
font-awesome
];

}
