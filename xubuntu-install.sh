#!/bin/bash

###INSTALAÇÃO MINIMA DO XUBUNTU 22.04 (ESTÁVEL)###

apt update && apt -y upgrade

sudo apt install -y network-manager

cp xf/apt.conf /etc/apt/

apt update

apt install -y xserver-xorg-core
apt install -y xserver-xorg-video-fbdev
apt install -y xserver-xorg

sudo apt install -y \
alsa-base \
alsa-utils \
avahi-daemon \
adwaita-icon-theme-full \
bc \
ca-certificates \
dmz-cursor-theme \
doc-base \
desktop-file-utils \
fonts-dejavu-core \
fonts-freefont-ttf \
fonts-noto-hinted \
foomatic-db-compressed-ppds \
ghostscript-x \
gtk2-engines-pixbuf \
gvfs-backends \
gvfs-fuse \
greybird-gtk-theme \
gnome-disk-utility \
inputattach \
language-selector-common \
language-selector-gnome \
libasound2-plugins \
libsasl2-modules \
libu2f-udev \
openprinting-ppds \
printer-driver-pnm2ppa \
rfkill \
spice-vdagent \
thunar-archive-plugin \
thunar-media-tags-plugin \
ubuntu-drivers-common \
update-manager \
wireless-tools \
wpasupplicant \
xdg-user-dirs \
xdg-user-dirs-gtk \
xdg-utils \
xfce4-panel \
xfce4-session \
xfce4-settings \
xfdesktop4 \
xfwm4 \
xfce4-terminal \
xkb-data \
xubuntu-artwork \
xubuntu-default-settings \
xubuntu-default-settings \
zenity \
xfce4-whiskermenu-plugin \
xfce4-pulseaudio-plugin \
xubuntu-community-wallpapers

apt update 

sudo apt install -y network-manager-gnome

rm -rf /etc/apt/apt.conf

apt update

apt install -y lightdm lightdm-gtk-greeter

apt install -y libvirt-clients libvirt-daemon-system libvirt-daemon virtinst bridge-utils qemu qemu-kvm
apt install -y virt-manager

apt update && apt -y upgrade

bash xf/part2-install.sh
