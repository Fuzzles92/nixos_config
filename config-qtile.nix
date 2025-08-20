#==========================================#
#        My Nix Qtile Configuation         #
#==========================================#

{ config, pkgs, ... }:

{

#==========================================#
#           Qtile Window Manager           #
#==========================================#

services.xserver.enable = true;
services.xserver.displayManager.lightdm.enable = true;
services.xserver.windowManager.qtile = {
  		enable = true;
		configFile = ./qtile/config.py;
  		extraPackages = python3Packages: with python3Packages; [
    		qtile-extras
    		];
};
  
#==========================================#
#           System Packages                #
#==========================================#
environment.systemPackages = with pkgs; [
	rofi			# Application Launcher		
	nemo
	kdePackages.kate	# Text Editor
	alacritty		# Terminal
	pavucontrol
	alsa-utils
	#blueman (Bluetooth)
	flameshot 		# Screenshot
	copyq 			# Clipboard
	#GNOME Apps
	pkgs.simple-scan		# Gnome Document Scanner
	pkgs.evince			# Gnome Docment Viewer
	pkgs.loupe			# Gnome Image Viewer
	pkgs.file-roller		# Gnome Archive Manager
	pkgs.gnome-calculator		# Gnome Calculator
	];

fonts.packages = with pkgs; [
	font-awesome		# Awesome Fonts
	];
	
programs.thunar.enable = true;

}
