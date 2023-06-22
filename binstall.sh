#!/bin/bash

apt update && apt -y upgrade

apt install -y \
   firmware-linux-nonfree \
   firmware-iwlwifi \
   firmware-atheros \
   firmware-realtek

apt install -y \
   xorg \
   xinit

apt install -y \
    zip \ 
    unzip \
    tar \
    gzip \
    p7zip-full

cp xf/apt.conf /etc/apt/
cp xf/sudoers /etc/

cp xf/apt.conf /etc/apt/
cp xf/sudoers /etc/

apt install -y \
    libxfce4ui-utils \
    thunar \
    thunar-data \
    thunar-volman \
    thunar-media-tags-plugin \
    thunar-archive-plugin \
    xfce4-pulseaudio-plugin \
    xfce4-appfinder \
    xfce4-panel \
    xfce4-session \
    xfce4-settings \
    xfce4-terminal \
    xfconf \
    xfdesktop4 \
    xfwm4 \
    xfce4-screenshooter \
    xfce4-power-manager \
    xfce4-whiskermenu-plugin \
    x11-xserver-utils

apt install -y \
    lightdm \
    lightdm-gtk-greeter
    
#mv etc/apt/apt.conf /etc/apt/apt.conf.a
    
rm -rf /etc/apt/apt.conf

apt update

apt install -y \
    network-manager-gnome
    
apt update
        
shutdown -r now
