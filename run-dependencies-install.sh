#!/bin/bash

# Wait to start
sleep 2

# Script info // waits for better user readability
echo '
 >> This will install the necessary dependencies for i3-gaps wm on debian-based systems.'
sleep 5

echo ' >> This script works on an installation of ubuntu server out of the box.'
sleep 5

echo ' >> Works on raspberry pi (tested on v4 builds), less tweaking necessary after installation.'
sleep 5

echo ' >> Non raspberry pi and ARM systems might require some extra tweaking after installation
'
sleep 5

read -p "
 Press when you're ready [Enter]:  "

# Installing dependencies
echo '

[task] Installing dependencies:'
sleep 5
sudo apt -yy install libxcb1-dev libxcb-keysyms1-dev git dmenu libpango1.0-dev libxcb-util0-dev \
 libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev \
 libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf \
 xutils-dev libtool automake rofi compton vim gcc git net-tools pkg-config dunst xutils libxcb-xrm0 \
 libxcb-xrm-dev tcl-snack-dev libxcb-shape0-dev libev-dev build-essential meson ninja-build cmake cmake-data \
 libcurl4-openssl-dev libiw-dev libpulse-dev libxcb-ewmh-dev libxcb-composite0-dev unzip \
 network-manager wpasupplicant wireless-tools fonts-noto fonts-ipafont fonts-hack fonts-symbola xclip \
 sphinx-common fonts-font-awesome network-manager-gnome

# Wait for user to process information on screen
sleep 5

# Done
echo '
 >> Done installing depedencies.
 >> You can now install i3-gaps wm & polybar.
'
