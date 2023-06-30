#!/bin/bash

###INSTALAÇÃO DE PROGRAMAS E COMPLEMENTOS NO DEBIAN 12 BOOKWORM (ESTÁVEL) E NO UBUNTU 22.04 (ESTÁVEL)###

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
    inxi \
    tumbler \
    gtk2-engines-pixbuf \
    gtk2-engines-murrine \
    greybird-gtk-theme \
    adwaita-icon-theme-full \
    cups \
    system-config-printer \
    printer-driver-gutenprint \
    printer-driver-escpr \
    cups-client \
    hplip \
    avahi-utils \
    system-config-printer-udev \
    bluetooth \
    pulseaudio-module-bluetooth \
    blueman \
    bluez-firmware \
    xcursor-themes \
    dmz-cursor-theme \
    thunderbird \
    qbittorrent \
    vlc \
    atril \
    libgtk-3-dev \
    gstreamer1.0-pulseaudio \
    cockpit \
    libreoffice-writer \
    libreoffice-calc \
    libreoffice-gtk3 \
    libreoffice-l10n-pt-br \
    update-manager \
    policykit-1-gnome \
    synaptic \
    python3-pydrive \
    deja-dup

apt update

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

tar -xvf xf/ClassicSparrow-Dream-dm.tar.gz -C /usr/share/themes/
tar -xvf xf/kora.tar.gz -C /usr/share/icons/
tar -xvf xf/wallpapers1.tar.gz -C /usr/share/backgrounds/
tar -xvf xf/wallpapers2.tar.gz -C /usr/share/backgrounds/
tar -xvf xf/wallpapers1.tar.gz -C /usr/share/backgrounds/xfce/
tar -xvf xf/wallpapers2.tar.gz -C /usr/share/backgrounds/xfce/

timedatectl set-timezone America/Sao_Paulo
systemctl restart systemd-timedated

systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service

apt update && apt -y upgrade

sudo reboot
