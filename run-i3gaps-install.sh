#!/bin/bash

# Wait to start
sleep 2

# Script info
echo '
>> This will install i3-gaps.
'
sleep 5

# Creates a temp/ directory for the installations
echo '[task] Creating installation directory...'
sleep 4
mkdir temp
cd temp

# Downloads i3-gaps and prepares directory
echo '
[task] Downloading i3-gaps:'
sleep 4
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps/
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd ..

# Downloading xcb-util
echo '
[task] Downloading necessary utilities:'
sleep 6
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm/

# Installing Utility
echo '
[task] Installing utility:'
sleep 5
git submodule update --init
sudo ./autogen.sh --prefix=/usr
make
sudo make install

# Installs i3-gaps
echo '
[task] Installing i3-gaps:'
sleep 6
cd ../i3-gaps/
sudo meson build
sudo ninja -C build/ install

# Done
echo '
 >> Done installing i3-gaps.
 >> We recommend you consider installing polybar by running "./run-polybar-install.sh".
'
