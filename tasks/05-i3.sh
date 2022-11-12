#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

wget -O- https://baltocdn.com/i3-window-manager/signing.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/i3wm-signing.gpg

echo "deb https://baltocdn.com/i3-window-manager/i3/i3-autobuild/ all main" | sudo tee /etc/apt/sources.list.d/i3-autobuild.list
sudo apt update && sudo apt install -y i3
symlink_config i3
create_symlink .xinitrc $DOTFILES/.config $HOME
create_symlink 90gpg-agent $DOTFILES/etc/X11/Xsession.d /etc/X11/Xsession.d sudo

sudo add-apt-repository -y ppa:regolith-linux/release
sudo apt update && sudo apt install -y picom

sudo systemctl disable gdm
sudo apt-get -y remove ubuntu-desktop
