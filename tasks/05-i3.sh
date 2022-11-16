#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo add-apt-repository -y ppa:regolith-linux/release
sudo apt update && sudo apt install -y i3-gaps picom

symlink_config i3
create_symlink .xinitrc $DOTFILES $HOME
create_symlink Pictures $DOTFILES $HOME
create_symlink 90gpg-agent $DOTFILES/etc/X11/Xsession.d /etc/X11/Xsession.d sudo

sudo systemctl disable gdm
sudo apt-get -y remove ubuntu-desktop
