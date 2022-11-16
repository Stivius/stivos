#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt install -y brightnessctl ddcutil
sudo usermod -a -G i2c $(whoami)

bash $STIVOS/utils/template.sh $DOTFILES/etc/sudoers.d/brightnessctl.template $STIVOS/tasks.env
create_symlink brightnessctl $DOTFILES/etc/sudoers.d /etc/sudoers.d sudo

symlink_bin_helper get_brightness
symlink_bin change_brightness $SCRIPTS/system
