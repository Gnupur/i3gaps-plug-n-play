#!/bin/bash

# Wait to start
sleep 2

# Script info // waits for better user readability
echo "
 >> This will install raspi-config, the raspberry pi configuration script from Raspbian/Raspberry Pi OS.
 >> Install on a non native OS like Ubuntu (Desktop, Server...) or other."
sleep 12

read -p "
 Press when you're ready [Enter]:  "
sleep 5

# Update
echo '
[task] Updating:'
sleep 2
sudo apt update
sleep 3

# Dependencies
echo '

[task] Installing dependencies: '
sleep 4
sudo apt-get -y install libnewt0.52 whiptail parted triggerhappy lua5.1 alsa-utils
sleep 3

# Download and install
echo '

[task] Gathering the packages & installing:'
sleep 4
wget https://archive.raspberrypi.org/debian/pool/main/r/raspi-config/raspi-config_20180406+1_all.deb -P /tmp
sudo dpkg -i /tmp/raspi-config_20180406+1_all.deb
sleep 1
echo '

 >> Installation finished.
 >> If no errors occured you should be able to just run "sudo raspi-config"
'
