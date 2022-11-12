#!/bin/bash
source ../utils/error.sh
source ../utils/utils.sh

create_symlink 60-monitor-hotplug-custom.rules $DOTFILES/etc/udev/rules.d /etc/udev/rules.d sudo
symlink_bin update_monitors $SCRIPTS/system
symlink_bin enable_laptop_monitor $SCRIPTS/system
