#!/bin/bash
source ../utils/utils.sh

sudo apt install -y brightnessctl ddcutil
sudo usermod -a -G i2c $HOME_USER 

create_symlink brightnessctl $DOTFILES/etc/sudoers.d /etc/sudoers.d sudo

symlink_bin_helper get_brightness
symlink_bin change_brightness $SCRIPTS/system
symlink_bin polybar_backlight $SCRIPTS/polybar
