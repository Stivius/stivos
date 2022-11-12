#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

sudo apt install -y brightnessctl ddcutil
sudo usermod -a -G i2c $HOME_USER 

../utils/template.sh $DOTFILES/etc/sudoers.d/brightnessctl.template ../tasks.env
create_symlink brightnessctl $DOTFILES/etc/sudoers.d /etc/sudoers.d sudo

symlink_bin_helper get_brightness
symlink_bin change_brightness $SCRIPTS/system
