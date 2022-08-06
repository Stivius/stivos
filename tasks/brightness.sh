#!/bin/bash

sudo apt install -y brightnessctl ddcutil
sudo usermod -a -G i2c user 

sudo ln -s $DOTFILES/etc/sudoers.d/brightnessctl /etc/sudoers.d/brightnessctl
ln -s $SCRIPTS/helpers/get_brightness $HOME/.local/bin/helpers/get_brightness
ln -s $SCRIPTS/system/change_brightness $HOME/.local/bin/change_brightness
ln -s $SCRIPTS/polybar/polybar_backlight $HOME/.local/bin/polybar_backlight

