#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt install -y brightnessctl ddcutil
sudo usermod -a -G i2c $(whoami)

bash $STIVOS/utils/template.sh $DOTFILES/etc/sudoers.d/brightnessctl.template $STIVOS/tasks.env
sudo chown root:root $DOTFILES/etc/sudoers.d/brightnessctl
sudo mv $DOTFILES/etc/sudoers.d/brightnessctl /etc/sudoers.d

symlink_bin_helper get_brightness
symlink_bin change_brightness $SCRIPTS/system
