#!/bin/bash

apt update && sudo apt upgrade -y

apt install -y zip unzip tar gzip p7zip-full

cp xf/apt.conf /etc/apt/

apt install -y xfce4
apt install -y xfce4-terminal xfce4-screenshooter xfce4-power-manager xfce4-whiskermenu-plugin
apt install -y xarchiver thunar-data thunar-volman thunar-media-tags-plugin thunar-archive-plugin xfce4-pulseaudio-plugin
apt install -y gvfs gvfs-fuse gvfs-backends udisks2
apt install -y dkms curl git htop viewnior cpu-x gpick greybird-gtk-theme cups system-config-printer printer-driver-gutenprint printer-driver-escpr cups-client hplip
apt update
apt install -y bluez pulseaudio-module-bluetooth thunderbird qbittorrent vlc atril blueman libgtk-3-dev

apt update

apt install -y qemu-system libvirt-daemon-system
apt update
apt install -y virt-manager
usermod -aG kvm and
usermod -aG libvirt and
systemctl enable --now libvirtd
systemctl start libvirtd
apt --fix-broken install

apt install -y cockpit

wget https://github.com/balena-io/etcher/releases/download/v1.18.4/balena-etcher_1.18.4_amd64.deb -O balena.deb
dpkg -i balena.deb
apt --fix-broken install

apt update

apt install -y libreoffice-writer libreoffice-calc libreoffice-gtk3 -y
apt install -y libreoffice-l10n-pt-br -y


chmod 777 /usr/share/themes/
chmod 777 /usr/share/backgrounds/
chmod 777 /usr/share/backgrounds/xfce/
chmod 777 /usr/share/icons/
chmod 777 /usr/share/images/desktop-base/

apt update

tar -xvf xf/wallpapers1.tar.gz -C /usr/share/images/desktop-base/
tar -xvf xf/wallpapers2.tar.gz -C /usr/share/images/desktop-base/

#https://download847.mediafire.com/blo2x1xe211goNdXcm_OR6xJTipOcelw36BAlRB9esc9Y7z4Wkg-lfKMeFvF1kOCMwpEaPbMqCb4yAlp5tQoESQgxjYDWsLTPPPyZnrNpHY8dLaXJm8YZYc34QhU7R3gT3Skl-_5WdRj5D5BSu4W5W85T4erpc19vpKMoa806emz2AI/uhiqf4jf8ldlm33/kora.tar.gz
#tar -xvf kora.tar.gz -C /usr/share/icons/

apt install -y network-manager-gnome

#mv /etc/apt/apt.conf.a /etc/apt/apt.conf

apt update

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
dpkg -i chrome.deb
apt --fix-broken install

wget https://az764295.vo.msecnd.net/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/code_1.78.2-1683731010_amd64.deb -O vscode.deb
dpkg -i vscode.deb
apt --fix-broken install

apt update

timedatectl set-timezone America/Sao_Paulo
systemctl restart systemd-timedated

systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service

apt update && sudo apt upgrade -y

shutdown -r now

