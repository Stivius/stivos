#!/bin/bash
source ../utils/error.sh
source ../utils/utils.sh

create_symlink hid_apple.conf $DOTFILES/etc/modprobe.d /etc/modprobe.d sudo
create_symlink 60-keyboard-hotplug-setup.rules $DOTFILES/etc/udev/rules.d /etc/udev/rules.d sudo
symlink_bin setup_keyboard $SCRIPTS/system
