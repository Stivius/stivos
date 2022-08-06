sudo ln -s $DOTFILES/etc/udev/rules.d/60-monitor-hotplug-custom.rules /etc/udev/rules.d/60-monitor-hotplug-custom.rules 
ln -s $SCRIPTS/system/update_monitors $HOME/.local/bin/update_monitors
ln -s $SCRIPTS/system/enable_laptop_monitor $HOME/.local/bin/enable_laptop_monitor
