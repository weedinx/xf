#!/bin/bash

###INSTALAÇÃO DO XUBUNTU CORE 22.04 (ESTÁVEL)###

apt update && apt -y upgrade

sudo apt install -y network-manager

#cp xf/apt.conf /etc/apt/

apt update

#apt install -y xserver-xorg-core
#apt install -y xserver-xorg-video-fbdev
#apt install -y xserver-xorg

sudo apt-get install xubuntu-core^

apt update 

sudo apt install -y network-manager-gnome

#rm -rf /etc/apt/apt.conf

apt update

#apt install -y lightdm lightdm-gtk-greeter

apt install -y libvirt-clients libvirt-daemon-system libvirt-daemon virtinst bridge-utils qemu qemu-kvm
apt install -y virt-manager

sudo dpkg-reconfigure locales
apt install -y language-pack-pt # <-- ALTERE ESTE PACOTE CONFORME O IDIOMA DO SEU PAÍS

apt update && apt -y upgrade

sudo bash xf/part2-install.sh
