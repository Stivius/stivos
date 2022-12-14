#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt install -y xfce4-power-manager

create_symlink 60-power-supply-notify.rules $DOTFILES/etc/udev/rules.d/ /etc/udev/rules.d/ sudo

symlink_bin_helper battery_helper
symlink_bin check_battery_level $SCRIPTS/system
symlink_bin check_battery_status $SCRIPTS/system
