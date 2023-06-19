#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y zip unzip tar gzip p7zip-full p7zip-rar

sudo chmod 777 /usr/share/themes/
sudo chmod 777 /usr/share/backgrounds/
sudo chmod 777 /usr/share/backgrounds/xfce/

sudo chmod 777 /usr/share/icons/

sudo apt update

tar -xvf xf/wallpapers1.tar.gz -C /usr/share/backgrounds/xfce/
tar -xvf xf/wallpapers2.tar.gz -C /usr/share/backgrounds/xfce/

https://download847.mediafire.com/blo2x1xe211goNdXcm_OR6xJTipOcelw36BAlRB9esc9Y7z4Wkg-lfKMeFvF1kOCMwpEaPbMqCb4yAlp5tQoESQgxjYDWsLTPPPyZnrNpHY8dLaXJm8YZYc34QhU7R3gT3Skl-_5WdRj5D5BSu4W5W85T4erpc19vpKMoa806emz2AI/uhiqf4jf8ldlm33/kora.tar.gz
tar -xvf kora.tar.gz -C /usr/share/icons/

sudo apt update

cp xf/apt.conf /etc/apt/

sudo apt install -y xserver-xorg xserver-xorg-core xfonts-base xinit x11-xserver-utils
sudo apt install -y xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 xfce4-taskmanager xfce4-screenshooter xfce4-power-manager gtk2-engines policykit-1 gtk2-engines-pixbuf

sudo apt install -y libreoffice-writer libreoffice-gtk3 -y
sudo apt install -y libreoffice-l10n-pt-br -y
mv /etc/apt/apt.conf /etc/apt/apt.conf.a

sudo apt update

sudo apt install -y xarchiver thunar-data thunar-volman thunar xfce4-terminal thunar-media-tags-plugin thunar-archive-plugin xfce4-whiskermenu-plugin

sudo apt update

sudo apt install -y gvfs gvfs-fuse gvfs-backends udisks2
sudo apt install -y dkms curl git htop viewnior cpu-x gpick yaru-theme-gtk greybird-gtk-theme pavucontrol pulseaudio-utils pulseaudio cups system-config-printer printer-driver-gutenprint printer-driver-escpr cups-client hplip
#yaru-theme-icon
sudo apt update

sudo apt install -y bluez pulseaudio-module-bluetooth thunderbird qbittorrent vlc atril blueman libgtk-3-dev
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
sudo apt --fix-broken install

sudo apt update
sudo apt install -y linux-firmware
sudo apt update

wget https://github.com/balena-io/etcher/releases/download/v1.18.4/balena-etcher_1.18.4_amd64.deb -O balena.deb
sudo dpkg -i balena.deb
sudo apt --fix-broken install

sudo apt update

sudo apt install flatpak
sudo apt --fix-broken install
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
sudo apt update
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt --fix-broken install
sudo apt update


mv /etc/apt/apt.conf.a /etc/apt/apt.conf

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
sudo dpkg -i chrome.deb
sudo apt --fix-broken install

wget https://az764295.vo.msecnd.net/stable/b3e4e68a0bc097f0ae7907b217c1119af9e03435/code_1.78.2-1683731010_amd64.deb -O vscode.deb
sudo dpkg -i vscode.deb
sudo apt --fix-broken install

timedatectl set-timezone America/Sao_Paulo
systemctl restart systemd-timedated

systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service

sudo apt update && sudo apt upgrade -y

sudo shutdown -r now
