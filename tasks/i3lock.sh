#!/bin/bash

sudo apt install -y xautolock
sudo apt install -y autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev
git clone https://github.com/Raymo111/i3lock-color.git

pushd i3lock-color
./install-i3lock-color.sh
popd

sudo ln -s $DOTFILES/etc/systemd/system/lock@.serivce /etc/systemd/system/lock@.service
