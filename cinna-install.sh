#!/bin/bash

apt update && apt -y upgrade

sudo apt install -y network-manager

apt install -y zip unzip tar gzip p7zip-full

#cp xf/apt1.conf /etc/apt/
#mv xf/apt1.conf /etc/apt/apt.conf
#apt update
apt install -y nemo-fileroller cinnamon-l10n

apt update
cp xf/apt.conf /etc/apt/
apt install -y network-manager-gnome
rm -rf /etc/apt/apt.conf

apt update

apt update
#apt install -y xorg
apt install -y cinnamon-desktop-environment
#apt install -y cinnamon
apt install -y cinnamon-core
apt install -y cinnamon-control-center-goa
#apt install -y metacity-common
#apt install -y network-manager-gnome
    
rm -rf /etc/apt/apt.conf

apt update
apt install -y lightdm lightdm-gtk-greeter

sudo apt install -y libvirt-clients libvirt-daemon-system libvirt-daemon virtinst bridge-utils qemu qemu-kvm
sudo apt install -y virt-manager

apt update

sudo dpkg-reconfigure locales
apt install -y language-pack-pt

sudo apt -y autoremove pulseaudio-module-bluetooth* --purge

apt update

sudo reboot

#apt install -y language-selector-common
