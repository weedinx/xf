#!/bin/bash

#INSTALAÇÃO MINIMA DO XFCE4 NO DEBIAN 12 BOOKWORM (ESTÁVEL)

apt update && apt -y upgrade

apt install -y firmware-linux-nonfree firmware-iwlwifi firmware-atheros firmware-realtek
apt install -y xorg xinit
apt install -y zip tar gzip p7zip-full

cp xf/apt.conf /etc/apt/
cp xf/sudoers /etc/

apt install -y xarchiver libxfce4ui-utils thunar thunar-data thunar-volman thunar-media-tags-plugin thunar-archive-plugin xfce4-pulseaudio-plugin xfce4-appfinder xfce4-panel xfce4-session xfce4-settings xfce4-terminal xfconf xfdesktop4 xfwm4 xfce4-screenshooter xfce4-power-manager xfce4-whiskermenu-plugin x11-xserver-utils tumbler
apt install -y lightdm
    
#mv etc/apt/apt.conf /etc/apt/apt.conf.a
    
rm -rf /etc/apt/apt.conf

apt update

apt install -y network-manager-gnome

apt install -y qemu-system libvirt-daemon-system
apt update
apt install -y virt-manager
usermod -aG kvm and
usermod -aG libvirt and
systemctl enable --now libvirtd
systemctl start libvirtd
apt --fix-broken install
    
apt update
        
shutdown -r now
