#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt-get install -y wireguard openresolv

sudo mkdir -p /etc/wireguard/

bash $STIVOS/utils/template.sh $DOTFILES/etc/sudoers.d/wg-quick.template $STIVOS/tasks.env
sudo chown root:root $DOTFILES/etc/sudoers.d/wg-quick
sudo mv $DOTFILES/etc/sudoers.d/wg-quick /etc/sudoers.d

bash $STIVOS/utils/template.sh $DOTFILES/etc/sudoers.d/wg.template $STIVOS/tasks.env
sudo chown root:root $DOTFILES/etc/sudoers.d/wg
sudo mv $DOTFILES/etc/sudoers.d/wg /etc/sudoers.d

bash $STIVOS/utils/template.sh $DOTFILES/etc/wireguard/wg0.conf.template $STIVOS/tasks.env
sudo cp $DOTFILES/etc/wireguard/wg0.conf /etc/wireguard/wg0.conf

symlink_bin vpn_control $SCRIPTS/system
