#!/bin/sh
## Recommended Packages for a fresh Arch Linux install
## Author: ChahatDeep Singh [chahatdeepsingh@gmail.com]
## Note: Comments begin with a # (inline comments are allowed)

#3D CAD
blender

#Development
git
python

#Arduino
avr-gcc
avr-binutils
avr-libc
avrdude
#arduino-sdk #from official arduino website or AUR repo


#Web Browsers
lynx #Command line browser
firefox 
flash-player #for firefox
chrome  #Add the adblock (not plus version) with the manual filters from gmail

#Utilities
launchy #Application launcher (Alt-Space Shortcut key)
evince #Pdf reader
rxvt-unicode
libreoffice
gvim    # Graphical VIM
ranger  # File Manager
calibre # eBook Manager
gparted
highlight #Syntax highlight

#Archive Tools
unrar
zip
unzip

#Networking
dialog
wpa_supplicant

#Interfacing & Apperance
conky
i3
redshift
feh #For setting the wallpaper
lxappearance
gnome-themes-standard
ttf-inconsolata #Font
ttf-droid 	#Font

#Automounting
udiskie
libnotify #needed for udiskie


#Sound:
alsa-utils
vlc

#X
xdg-utils
xf86-input-evdev
xf86-input-synaptics
xorg-fonts-misc
xorg-xinit
xorg-video-intel
xf86-video-nouveau
xf86-video-nv
xorg-xinit
xorg-server
xorg-server-utils
xorg-xev #Mouse-keyboard click check

#System
base
base-devel
sudo
ntfs-3g #for NTFS partitions
dosfstools #for FAT partitions
bash-completion
ntp #Network Time Protocol - for clock sync

#Power Management
acpid

#Backlight Tool
#vbetool #Use vbetool dpms off/on to switch backlight
