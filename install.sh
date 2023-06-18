#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y zip unzip tar gzip p7zip-full p7zip-rar

sudo chmod 777 /usr/share/themes/
sudo chmod 777 /usr/share/backgrounds/
sudo chmod 777 /usr/share/backgrounds/xfce/
sudo chmod 777 /usr/share/icons/

tar xvzf xf/wallpapers1.tar.gz
cp xf/wallpapers1/* /usr/share/backgrounds/
cp xf/wallpapers1/* /usr/share/backgrounds/xfce/
tar xvzf xf/wallpapers2.tar.gz
cp xf/wallpapers2/* /usr/share/backgrounds/
cp xf/wallpapers2/* /usr/share/backgrounds/xfce/

sudo apt update

cp xf/apt.conf /etc/apt/
tar xvzf xf/kora.tar.gz
cp -r kora/ /usr/share/icons/

#sudo apt install -y network-manager-gnome

sudo apt install -y xserver-xorg xserver-xorg-core xfonts-base xinit x11-xserver-utils
sudo apt install -y xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 xfce4-taskmanager xfce4-screenshooter xfce4-power-manager gtk2-engines policykit-1 gtk2-engines-pixbuf thunar-data thunar-volman thunar xfce4-terminal thunar-media-tags-plugin thunar-archive-plugin xfce4-whiskermenu-plugin

#sudo apt install -y thunar-data thunar-volman thunar xfce4-terminal thunar-media-tags-plugin thunar-archive-plugin xfce4-whiskermenu-plugin

sudo apt install -y libreoffice-writer libreoffice-gtk3 -y
sudo apt install -y libreoffice-l10n-pt-br -y

mv /etc/apt/apt.conf /etc/apt/apt.conf.a

sudo apt install -y gvfs gvfs-fuse gvfs-backends udisks2
sudo apt install -y dkms curl git htop viewnior cpu-x gpick yaru-theme-gtk greybird-gtk-theme pavucontrol pulseaudio-utils pulseaudio cups system-config-printer printer-driver-gutenprint printer-driver-escpr cups-client hplip
#yaru-theme-icon
sudo apt update

sudo apt install -y libgtk-3-dev uim-gtk2.0
sudo apt install -y bluez pulseaudio-module-bluetooth thunderbird qbittorrent vlc atril blueman xarchiver
sudo apt install -y lightdm lightdm-gtk-greeter

sudo apt update

sudo apt install -y virtualbox
sudo apt install -y deepin-deb-installer cockpit
sudo systemctl enable --now cockpit.socket
sudo usermod -aG sudo and

sudo apt update

sudo apt install -y network-manager-gnome

sudo apt update

sudo apt install -y qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon
sudo apt update
sudo apt install -y virt-manager
#sudo usermod -G libvirt -a and
sudo usermod -aG kvm and
sudo usermod -aG libvirt and
sudo systemctl enable --now libvirtd
sudo systemctl start libvirtd

sudo apt update
sudo apt install -y linux-firmware
sudo apt update

wget https://github.com/balena-io/etcher/releases/download/v1.18.4/balena-etcher_1.18.4_amd64.deb
sudo apt install -y ./balena-etcher*.deb

mv /etc/apt/apt.conf.a /etc/apt/apt.conf

sudo apt install flatpak
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
sudo apt update
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt update

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome*.deb

wget https://az764295.vo.msecnd.net/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/code_1.78.2-1683731010_amd64.deb
sudo apt install -y ./code*.deb

rm -rf xf/

timedatectl set-timezone America/Sao_Paulo
systemctl restart systemd-timedated

sudo apt update && sudo apt upgrade -y

sudo shutdown -r now
