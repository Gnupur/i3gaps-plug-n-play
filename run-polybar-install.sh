#!/bin/bash

# Wait to start
sleep 2

# Info
echo "
 >> Polybar is going to be installed."
sleep 5
echo " >> This install is being tested and adapted to work with rpi systems.
"
sleep 5

read -p "
 Press when you're ready [Enter]:  "

# Polybar Dependencies check
echo '
[task] Checking and installing dependencies:'
sleep 5
sudo apt-get install -yy libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev \
 libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python3-xcbgen xcb-proto libxcb-xrm-dev i3-wm \
 libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb \
 libxcb-ewmh2 libjsoncpp-dev libjsoncpp1 libjsoncpp-dev

# Check and create folder for install
mkdir temp
cd temp/
sleep 2

# Downloading necessary files
echo '
[task] Downloading Files:'
sleep 3
git clone https://github.com/polybar/polybar.git

# Installing Polybar
echo '
[task] Installing Polybar:'
sleep 3
cd polybar/
sudo ./build.sh

# Done
echo "
 >> Done! Finished installing polybar.
"