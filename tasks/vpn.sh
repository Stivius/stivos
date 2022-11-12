#!/bin/bash
source ../utils/error.sh
source ../utils/utils.sh

sudo apt-get install -y wireguard

sudo mkdir -p /etc/wireguard/

sudo cp $DOTFILES/etc/wireguard/wg0.conf /etc/wireguard/wg0.conf

symlink_bin vpn_control $SCRIPTS/system
symlink_bin polybar_vpn $SCRIPTS/polybar
