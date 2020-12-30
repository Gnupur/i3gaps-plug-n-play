# About the project
 Plug n Play! This repo is focused on helping you install i3-gaps Wm on Debian/Ubuntu based systems and distros that might be limited to do so. You can download and set this up on a new minimal/server or other install you might have easily. This was made so it could also work on a Raspberry Pi (64bit distros tested), other arm systems might work with it as well (only tested on RPI for the time being).

# How to setup & run

### Screenshot 1 // Wallpaper (wall-16)
![Screenshot 01](https://github.com/syspentarc/i3gaps-plug-n-play/blob/main/Screenshot%2001.png?raw=true)

### Screenshot 2 // Showcase of Polybar and I3 custom config files
![Screenshot 02](https://github.com/syspentarc/i3gaps-plug-n-play/blob/main/Screenshot%2002.png?raw=true)

## Steps before download & setup

#### Ensure your system is updated:
`sudo apt-get update`

Since not all systems are not made the same and not all ditributions work the same way, testing shows that some linux installs need to be upgraded prior to dependency install.

#### Upgrade your system:
`sudo apt-get upgrade`

---
## Download and setup

##### Ensure you have git installed
`sudo apt-get install git`

#### Download:
`git clone https://github.com/syspentarc/i3gaps-plug-n-play.git`
 
#### Get inside the folder:
`cd i3gaps-plug-n-play`

You can either run a script at a time or run the install script. Each script has a dedicated function, the run-install.sh script will run the installation of dependencies and i3-gaps, followed by letting you go through picking recommended software and installing polybar.

#### Run install scrip example:
`bash run-install.sh` or `./run-install.sh`

#### Run individual scripts example:
`./run-dependencies-install.sh ; ./run-i3gaps-install.sh` or `bash run-dependencies-install.sh ; bash run-i3gaps-install.sh`

The code is getting continually improved to fit cross-device depedencies and limitaions. 
