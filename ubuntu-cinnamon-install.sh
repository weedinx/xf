#!/bin/bash

###INSTALAÇÃO MINIMA DO CINNAMON NO UBUNTU 22.04 (ESTÁVEL)###

apt update && apt -y upgrade

cp xf/apt.conf /etc/apt/
apt update
apt install -y xserver-xorg-core
apt install -y xserver-xorg-video-fbdev
apt install -y xserver-xorg
rm -rf /etc/apt/apt.conf

apt update
apt install -y network-manager
apt install -y nemo nemo-fileroller cinnamon-l10n
apt install -y zip unzip tar gzip p7zip-full

cp xf/apt.conf /etc/apt/
apt update
apt install -y network-manager-gnome
apt install -y cinnamon
apt install -y cinnamon-control-center-goa
    
rm -rf /etc/apt/apt.conf

apt update
apt install -y lightdm lightdm-gtk-greeter

sudo apt install -y libvirt-clients libvirt-daemon-system libvirt-daemon virtinst bridge-utils qemu qemu-kvm
sudo apt install -y virt-manager

apt update

sudo dpkg-reconfigure locales
apt install -y language-pack-pt # <-- ALTERE ESTE PACOTE CONFORME O IDIOMA DO SEU PAÍS

apt update && apt -y upgrade

sudo bash xf/part2-install.sh
