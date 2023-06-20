#!/bin/bash

apt update && sudo apt upgrade -y

apt install firmware-linux-nonfree firmware-iwlwifi firmware-atheros firmware-realtek -y

apt install -y zip unzip tar gzip

cp xf/apt.conf /etc/apt/

apt update

apt install -y xserver-xorg-core xfonts-base xinit x11-xserver-utils xserver-xorg
apt install -y xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 lxtask xfce4-screenshooter xfce4-power-manager gtk2-engines policykit-1 gtk2-engines-pixbuf
apt install -y xarchiver thunar-data thunar-volman thunar thunar-media-tags-plugin thunar-archive-plugin xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin

apt install -y libreoffice-writer libreoffice-calc libreoffice-gtk3 -y
apt install -y libreoffice-l10n-pt-br -y

mv /etc/apt/apt.conf /etc/apt/apt.conf.a

apt update

apt install -y gvfs gvfs-fuse gvfs-backends udisks2
apt install -y dkms curl git htop viewnior cpu-x gpick greybird-gtk-theme pulseaudio cups system-config-printer printer-driver-gutenprint printer-driver-escpr cups-client hplip
apt update

apt install -y bluez pulseaudio-module-bluetooth thunderbird qbittorrent vlc atril blueman libgtk-3-dev
apt install -y lightdm lightdm-gtk-greeter

apt update

apt install -y qemu-system libvirt-daemon-system
usermod -aG kvm and
usermod -aG libvirt and
apt update
apt install -y virt-manager
systemctl enable --now libvirtd
systemctl start libvirtd
apt --fix-broken install

wget https://github.com/balena-io/etcher/releases/download/v1.18.4/balena-etcher_1.18.4_amd64.deb -O balena.deb
dpkg -i balena.deb
apt --fix-broken install

apt update

apt install flatpak
apt --fix-broken install
apt update
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
apt --fix-broken install
apt install gnome-software-plugin-flatpak
apt update


chmod 777 /usr/share/themes/
chmod 777 /usr/share/backgrounds/
chmod 777 /usr/share/backgrounds/xfce/
chmod 777 /usr/share/icons/

apt update

tar -xvf xf/wallpapers1.tar.gz -C /usr/share/images/desktop-base/
tar -xvf xf/wallpapers2.tar.gz -C /usr/share/images/desktop-base/

#https://download847.mediafire.com/blo2x1xe211goNdXcm_OR6xJTipOcelw36BAlRB9esc9Y7z4Wkg-lfKMeFvF1kOCMwpEaPbMqCb4yAlp5tQoESQgxjYDWsLTPPPyZnrNpHY8dLaXJm8YZYc34QhU7R3gT3Skl-_5WdRj5D5BSu4W5W85T4erpc19vpKMoa806emz2AI/uhiqf4jf8ldlm33/kora.tar.gz
#tar -xvf kora.tar.gz -C /usr/share/icons/

mv /etc/apt/apt.conf.a /etc/apt/apt.conf

apt update

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
dpkg -i chrome.deb
apt --fix-broken install

wget https://az764295.vo.msecnd.net/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/code_1.78.2-1683731010_amd64.deb -O vscode.deb
dpkg -i vscode.deb
apt --fix-broken install

#apt install -y network-manager-gnome

apt update

apt install -y nm-tray

timedatectl set-timezone America/Sao_Paulo
systemctl restart systemd-timedated

systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service

apt update && sudo apt upgrade -y

shutdown -r now
