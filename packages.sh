#!/bin/sh
set -xeuo pipefail

# Install additional packages
rpm-ostree install \
	   foot \
	   gnome-icon-theme \
	   sway \
	   sway-wallpapers \
	   swaybg \
	   swaycaffeine \
	   swayidle \
	   swaylock \
	   thunar \
	   vim-enhanced \
	   wev

# Remove unwanted packages
rpm-ostree override remove \
	   PackageKit-glib \
	   tracker \
	   tracker-miners 
