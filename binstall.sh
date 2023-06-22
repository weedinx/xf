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
    xfce4-whiskermenu-plugin
    
#mv etc/apt/apt.conf /etc/apt/apt.conf.a
rm -rf etc/apt/apt.conf

apt update
    
apt install -y \
    gvfs \
    gvfs-fuse \
    gvfs-backends \
    udisks2
    
apt install -y \
    dkms \
    curl \
    git \
    htop \
    viewnior \
    cpu-x \
    gpick \
    greybird-gtk-theme \
    qt5tc \
    adwaita-qt

apt install -y \
    cups \
    system-config-printer \
    printer-driver-gutenprint \
    printer-driver-escpr \
    cups-client \
    hplip
    
apt install -y \
    bluez \
    pulseaudio-module-bluetooth \
    thunderbird \
    qbittorrent \
    vlc \
    atril \
    blueman \
    firefox-esr \
    libgtk-3-dev
    
#apt install -y \
#    network-manager-gnome
    
apt update

apt install -y \
    libreoffice-writer \
    libreoffice-calc \
    libreoffice-gtk3 \
    libreoffice-l10n-pt-br
    
apt install -y \
    lightdm

chmod 777 /usr/share/themes/
chmod 777 /usr/share/backgrounds/
chmod 777 /usr/share/backgrounds/xfce/
chmod 777 /usr/share/icons/
chmod 777 /usr/share/images/desktop-base/

apt update

tar -xvf xf/wallpapers1.tar.gz -C /usr/share/images/desktop-base/
tar -xvf xf/wallpapers2.tar.gz -C /usr/share/images/desktop-base/
    
#mv etc/apt/apt.conf.a /etc/apt/apt.conf

timedatectl set-timezone America/Sao_Paulo
systemctl restart systemd-timedated

systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service
        
shutdown -r now
