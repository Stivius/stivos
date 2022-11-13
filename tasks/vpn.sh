#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt-get install -y wireguard

sudo mkdir -p /etc/wireguard/

bash $STIVOS/utils/template.sh $DOTFILES/etc/wireguard/wg0.conf.template $STIVOS/tasks.env
sudo cp $DOTFILES/etc/wireguard/wg0.conf /etc/wireguard/wg0.conf

symlink_bin vpn_control $SCRIPTS/system
