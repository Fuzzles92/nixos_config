#==========================================#
#         My Nix GNOME Configuation        #
#==========================================#

#==========================================#
#           GNOME gSettings                #
#==========================================#

#gsettings set org.gnome.desktop.interface cursor-theme 'Adwaita'
#gsettings set org.gnome.desktop.interface cursor-size 24
#gsettings set org.gnome.desktop.interface icon-theme 'Adwaita'
#gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
#gsettings set org.gnome.shell.extensions.user-theme name 'Adwaita'

{ config, pkgs, ... }:

{

#==========================================#
#               GNOME Desktop              #
#==========================================#
services.xserver.displayManager.gdm = {
		enable = true;
		};
services.xserver.desktopManager.gnome.enable = true;
services.xserver.excludePackages = with pkgs; [
  	pkgs.xterm		# xTerm
  ];

#==========================================#
#             GNOME Excludes               #
#==========================================#
environment.gnome.excludePackages = with pkgs.gnome; [
	pkgs.gnome-calendar		# Gnome Calendar
	pkgs.gnome-characters		# Gnome Characters
	pkgs.gnome-clocks		# Gnome Clocks
	pkgs.gnome-contacts		# Gnome Contacts
	pkgs.gnome-font-viewer		# Gnome Font Viewer
	pkgs.gnome-logs			# Gnome Logs
	pkgs.gnome-maps			# Gnome Maps
	pkgs.gnome-music		# Gnome Music
	pkgs.gnome-photos		# Gnome Photos
	pkgs.gnome-weather		# Gnome Weather
	pkgs.gnome-connections		# Gnome Connections
	pkgs.gnome-tour			# Gnome Tour
	pkgs.snapshot			# Gnome Camera
	pkgs.decibels			# Gnome Music Player
	pkgs.totem			# Gnome Video Player
	pkgs.geary			# Gnome Email Client
	pkgs.baobab			# Gnome Disk Usage Analyzer
	pkgs.seahorse			# Gnome Password Manager
	pkgs.epiphany			# Gnome Web Browser
	pkgs.yelp			# Gnome Help Viewer
	#pkgs.gnome-system-monitor	# Gnome System Monitor
	#pkgs.gnome-disk-utility	# Gnome Disk Utility
	#pkgs.gnome-text-editor		# Gnome Text Editor
	#pkgs.simple-scan		# Gnome Document Scanner
	#pkgs.evince			# Gnome Docment Viewer
	#pkgs.loupe			# Gnome Image Viewer
	#pkgs.file-roller		# Gnome Archive Manager
	#pkgs.gnome-calculator		# Gnome Calculator
  ];
  
#==========================================#
#           Sysem Packages                 #
#==========================================#
environment.systemPackages = with pkgs; [
	# Gnome Extensions
	gnomeExtensions.appindicator
	gnomeExtensions.blur-my-shell
	gnomeExtensions.dash-to-dock
	gnomeExtensions.caffeine
	gnomeExtensions.gsconnect
	gnomeExtensions.logo-menu
	gnomeExtensions.search-light
	# Other Applications
	gnome-tweaks		# Additional Gnome Changes
	ignition		# Start up Applications
	];

}

