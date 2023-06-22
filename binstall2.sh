#!/bin/bash

apt update && apt -y upgrade
    
apt install -y \
    gvfs \
    gvfs-fuse \
    gvfs-backends \
    udisks2 \
    curl \
    git \
    htop \
    viewnior \
    cpu-x \
    gpick \
    greybird-gtk-theme \
    adwaita-qt \
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
    libgtk-3-dev \
    cockpit \
    libreoffice-writer \
    libreoffice-calc \
    libreoffice-gtk3 \
    libreoffice-l10n-pt-br

apt update

apt install -y qemu-system libvirt-daemon-system
apt update
apt install -y virt-manager
usermod -aG kvm and
usermod -aG libvirt and
systemctl enable --now libvirtd
systemctl start libvirtd
apt --fix-broken install

wget https://github.com/balena-io/etcher/releases/download/v1.18.4/balena-etcher_1.18.4_amd64.deb -O balena.deb
dpkg -i balena.deb
apt --fix-broken install

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
dpkg -i chrome.deb
apt --fix-broken install

wget https://az764295.vo.msecnd.net/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/code_1.78.2-1683731010_amd64.deb -O vscode.deb
dpkg -i vscode.deb
apt --fix-broken install

chmod 777 /usr/share/themes/
chmod 777 /usr/share/backgrounds/
chmod 777 /usr/share/backgrounds/xfce/
chmod 777 /usr/share/icons/
chmod 777 /usr/share/images/desktop-base/

apt update

tar -xvf xf/wallpapers1.tar.gz -C /usr/share/backgrounds/xfce/
tar -xvf xf/wallpapers2.tar.gz -C /usr/share/backgrounds/xfce/
    
#mv etc/apt/apt.conf.a /etc/apt/apt.conf

timedatectl set-timezone America/Sao_Paulo
systemctl restart systemd-timedated

systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service

apt update && apt -y upgrade
