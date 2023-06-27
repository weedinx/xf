#!/bin/bash

apt update && apt -y upgrade

sudo apt install -y network-manager
sudo apt install -y gnome-control-center gnome-online-accounts

apt install -y zip unzip tar gzip p7zip-full

cp xf/apt.conf /etc/apt/

apt update

apt update
apt install -y xorg
apt install -y cinnamon-core
apt install -y network-manager-gnome
apt install -y nemo-fileroller cinnamon-l10n
    
rm -rf /etc/apt/apt.conf

apt update
apt install -y lightdm lightdm-gtk-greeter

sudo apt install -y libvirt-clients libvirt-daemon-system libvirt-daemon virtinst bridge-utils qemu qemu-kvm
sudo apt install -y virt-manager

apt update

sudo dpkg-reconfigure locales
apt install -y language-pack-pt

apt update

#apt install -y language-selector-common
