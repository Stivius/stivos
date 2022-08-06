sudo apt install -y xfce4-power-manager

sudo ln -s $DOTFILES/etc/udev/rules.d/60-power-supply-notify.rules /etc/udev/rules.d/60-power-supply-notify.rules
ln -s $SCRIPTS/helpers/battery_helper $HOME/.local/bin/helpers/battery_helper
ln -s $SCRIPTS/system/check_battery_level $HOME/.local/bin/check_battery_level
ln -s $SCRIPTS/system/check_battery_status $HOME/.local/bin/check_battery_status
