#!/bin/bash

sudo apt update && sudo apt upgrade -y

cp xf/apt.conf /etc/apt/

sudo apt update

sudo apt install -y linux-firmware
sudo apt install -y xserver-xorg xserver-xorg-core xfonts-base xinit x11-xserver-utils
sudo apt install -y xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 xfce4-taskmanager tango-icon-theme xfce4-screenshooter xfce4-power-manager gtk2-engines gtk2-engines-pixbuf
sudo apt install -y gvfs gvfs-fuse gvfs-backends policykit-1 udisks2

sudo apt install -y dkms curl git htop viewnior cpu-x gpick yaru-theme-gtk yaru-theme-icon pavucontrol pulseaudio-utils pulseaudio cups system-config-printer printer-driver-gutenprint printer-driver-escpr cups-client hplip -y
sudo apt install -y thunar-data thunar-volman thunar xfce4-terminal thunar-media-tags-plugin thunar-archive-plugin xfce4-whiskermenu-plugin

sudo apt --no-install-recommends install -y libreoffice-writer libreoffice-gtk3 -y
sudo apt install -y libreoffice-l10n-pt-br -y

sudo apt install -y firefox libgtk-3-dev uim-gtk2.0 gdebi
sudo apt install -y bluez pulseaudio-module-bluetooth thunderbird qbittorrent vlc atril blueman xarchiver
sudo apt install -y lightdm lightdm-gtk-greeter

sudo apt install -y zip unzip  tar gzip p7zip-full p7zip-rar

sudo chmod 777 /usr/share/themes/
sudo chmod 777 /usr/share/backgrounds/
sudo chmod 777 /usr/share/icons/

sudo apt update

sudo apt install -y network-manager-gnome

#sudo apt install -y qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon
#sudo apt update
#sudo apt install -y virt-manager
#sudo systemctl enable --now libvirtd
#sudo systemctl start libvirtd

sudo apt install -y virtualbox-qt

sudo apt update && sudo apt upgrade -y

sudo shutdown -r now
