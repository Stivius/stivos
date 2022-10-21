#!/bin/bash
source ../utils/utils.sh

wget -O- https://baltocdn.com/i3-window-manager/signing.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/i3wm-signing.gpg

echo "deb https://baltocdn.com/i3-window-manager/i3/i3-autobuild/ all main" | sudo tee /etc/apt/sources.list.d/i3-autobuild.list

sudo apt update && sudo apt install -y i3
symlink_config i3
create_symlink .xinitrc $DOTFILES/.config $HOME

# sudo rm -f /etc/X11/Xsession.d/90gpg-agent && sudo ln -s $HOME/Projects/dotfiles/etc/X11/Xsession.d/90gpg-agent /etc/X11/Xsession.d/90gpg-agent
# echo 'Symlink to 90gpg-agent created'

sudo systemctl disable gdm
sudo apt-get -y remove ubuntu-desktop
