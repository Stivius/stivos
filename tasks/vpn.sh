#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

sudo apt-get install -y wireguard

sudo mkdir -p /etc/wireguard/

../utils/template.sh $DOTFILES/etc/wireguard/wg0.conf.template ../tasks.env
sudo cp $DOTFILES/etc/wireguard/wg0.conf /etc/wireguard/wg0.conf

symlink_bin vpn_control $SCRIPTS/system
