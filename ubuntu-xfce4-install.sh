#!/bin/bash

#INSTALAÇÃO MINIMA DO XFCE4 NO UBUNTU 22.04

apt update && apt -y upgrade

apt install -y zip unzip tar gzip p7zip-full

cp xf/apt.conf /etc/apt/

apt update

apt install -y xorg
apt install -y xarchiver libxfce4ui-utils thunar thunar-data thunar-volman thunar-media-tags-plugin thunar-archive-plugin xfce4-pulseaudio-plugin xfce4-appfinder xfce4-panel xfce4-session xfce4-settings xfce4-terminal xfconf xfdesktop4 xfwm4 xfce4-screenshooter xfce4-power-manager xfce4-whiskermenu-plugin x11-xserver-utils tumbler
apt install -y lightdm
apt install -y network-manager-gnome
    
rm -rf /etc/apt/apt.conf

apt update

sudo apt install -y libvirt-clients libvirt-daemon-system libvirt-daemon virtinst bridge-utils qemu qemu-kvm
sudo apt install -y virt-manager

mkdir /usr/share/icons/kora
unzip xf/kora.zip -d /usr/share/icons/kora/

sudo dpkg-reconfigure locales
apt install -y language-pack-pt

apt update

#apt install -y language-selector-common
apt install -y lightdm-gtk-greeter

