#!/bin/bash

# Wait to start
sleep 2

# Recommended programs warning
echo "
 >> These are the recommended programs to be installed."
sleep 3

echo " >> If you're using a minimal or server install, it's recommended you select lightdm."
sleep 5

echo " >> If you intend to use the provided i3 configuration, consider selecting everything."
sleep 8

echo  '

  --> These tools include:

     figlet          -> terminal text art
     lolcat          -> colorful text
     ranger          -> terminal file manager
     w3m             -> minimal terminal browser
     lightdm         -> manage login sessions
     nitrogen        -> wallpaper manager
     thunar          -> file manager
     gnome-terminal  -> terminal
     arandr          -> manage display resolution
     firefox         -> web browser
'
sleep 7

read -p "
 Press when you're ready [Enter]:  "

# Options
read -p '

 # Install lightdm --------- [y/N]: ' opLIGHTDM
case $opLIGHTDM in
  [yY] | [yY][eE][sS])
    insLIGHTDM=true
    ;;
  *)
    insLIGHTDM=false
    ;;
esac

read -p ' # Install gnome-terminal -- [y/N]: ' opGTERM
case $opGTERM in
  [yY] | [yY][eE][sS])
    insGTERM=true
    ;;
  *)
    insGTERM=false
    ;;
esac

read -p ' # Install thunar ---------- [y/N]: ' opTHUNAR
case $opTHUNAR in
  [yY] | [yY][eE][sS])
    insTHUNAR=true
    ;;
  *)
    insTHUNAR=false
    ;;
esac

read -p ' # Install firefox --------- [y/N]: ' opFIREFOX
case $opFIREFOX in
  [yY] | [yY][eE][sS])
    insFIREFOX=true
    ;;
  *)
    insFIREFOX=false
    ;;
esac

read -p ' # Install figlet ---------- [y/N]: ' opFIGLET
case $opFIGLET in
  [yY] | [yY][eE][sS])
    insFIGLET=true
    ;;
  *)
    insFIGLET=false
    ;;
esac

read -p ' # Install lolcat ---------- [y/N]: ' opLOLCAT
case $opLOLCAT in
  [yY] | [yY][eE][sS])
    insLOLCAT=true
    ;;
  *)
    insLOLCAT=false
    ;;
esac

read -p ' # Install ranger ---------- [y/N]: ' opRANGER
case $opRANGER in
  [yY] | [yY][eE][sS])
    insRANGER=true
    ;;
  *)
    insRANGER=false
    ;;
esac

read -p ' # Install w3m ------------- [y/N]: ' opW3m
case $opW3m in
  [yY] | [yY][eE][sS])
    insW3M=true
    ;;
  *)
    insW3M=false
    ;;
esac

read -p ' # Install nitrogen -------- [y/N]: ' opNITROGEN
case $opNITROGEN in
  [yY] | [yY][eE][sS])
    insNITROGEN=true
    ;;
  *)
    insNITROGEN=false
    ;;
esac

read -p ' # Install arandr ---------- [y/N]: ' opARANDR
case $opARANDR in
  [yY] | [yY][eE][sS])
    insARANDR=true
    ;;
  *)
    insARANDR=false
    ;;
esac

# What to install
if $insLIGHTDM; 
then
  LIGHTDM='lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings'
  echo '
  > lightdm           yes'
else
  LIGHTDM=
  echo '
  > lightdm           no'
fi

if $insGTERM; 
then
  GTERM='gnome-terminal'
  echo '  > gonome-terminal   yes'
else
  GTERM=
  echo '  > gnome-terminal    no'
fi

if $insTHUNAR; 
then
  THUNAR='thunar'
  echo '  > thunar            yes'
else
  THUNAR=
  echo '  > thunar            no'
fi

if $insFIREFOX; 
then
  FIREFOX='firefox'
  echo '  > firefox           yes'
else
  FIREFOX=
  echo '  > firefox           no'
fi

if $insFIGLET; 
then
  FIGLET='figlet'
  echo '  > figlet            yes'
else
  FIGLET=
  echo '  > figlet            no'
fi

if $insLOLCAT; 
then
  LOLCAT='lolcat'
  echo '  > lolcat            yes'
else
  LOLCAT=
  echo '  > lolcat            no'
fi

if $insRANGER; 
then
  RANGER='ranger'
  echo '  > ranger            yes'
else
  RANGER=
  echo '  > ranger            no'
fi

if $insW3M; 
then
  W3M='w3m'
  echo '  > w3m               yes'
else
  W3M=
  echo '  > w3m               no'
fi

if $insNITROGEN; 
then
  NITROGEN='nitrogen'
  echo '  > nitrogen          yes'
else
  NITROGEN=
  echo '  > nitrogen          no'
fi

if $insARANDR; 
then
  ARANDR='arandr'
  echo '  > arandr            yes'
else
  ARANDR=
  echo '  > arandr            no'
fi

read -p "
 Press when you're ready [Enter]:  "

# Install recommended programs
echo "
[task] Installing recommended programs:"
sleep 8
sudo apt install -yy $LIGHTDM $GTERM $THUNAR $FIREFOX $FIGLET $LOLCAT $RANGER $W3M $NITROGEN $ARANDR

# Done
echo "
 >> Done! Finished installing additional programs.
"
