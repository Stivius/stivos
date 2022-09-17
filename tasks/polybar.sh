#!/bin/bash

# required
sudo apt install -y build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev

# optional for modules
apt install -y libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

pushd $HOME

git clone --recursive https://github.com/polybar/polybar

pushd polybar

cmake .
make -j$(nproc)
sudo make install
rm -rf $HOME/.config/polybar && ln -s $DOTFILES/.config/polybar $HOME/.config/polybar

popd
rm -rf ./polybar
popd
