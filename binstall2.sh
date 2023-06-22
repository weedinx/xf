#!/bin/bash

apt update && apt -y upgrade
    
apt install -y \
    gvfs \
    gvfs-fuse \
    gvfs-backends \
    udisks2
    
apt install -y \
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
    hplip \
    bluez \
    pulseaudio-module-bluetooth \
    thunderbird \
    qbittorrent \
    vlc \
    atril \
    blueman \
    firefox-esr \
    libgtk-3-dev
    
apt update

apt install -y \
    libreoffice-writer \
    libreoffice-calc \
    libreoffice-gtk3 \
    libreoffice-l10n-pt-br

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

apt update && apt -y upgrade
        
shutdown -r now
