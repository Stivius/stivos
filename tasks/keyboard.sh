sudo ln -s $DOTFILES/etc/modprobe.d/hid_apple.conf /etc/modprobe.d/hid_apple.conf
sudo ln -s $DOTFILES/etc/udev/rules.d/60-keyboard-hotplug-setup.rules /etc/udev/rules.d/60-keyboard-hotplug-setup.rules 
ln -s $SCRIPTS/system/setup_keyboard $HOME/.local/bin/setup_keyboard
