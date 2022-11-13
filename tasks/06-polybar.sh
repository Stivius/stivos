#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

# required
sudo apt install -y build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev

# optional for modules
sudo apt install -y libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev

pushd $HOME

git_clone_repo https://github.com/polybar/polybar "--recursive"

pushd polybar

cmake .
make -j$(nproc)
sudo make install
symlink_config polybar

symlink_bin polybar_vpn $SCRIPTS/polybar
symlink_bin polybar_micro $SCRIPTS/polybar
symlink_bin polybar_music $SCRIPTS/polybar
symlink_bin polybar_play_pause $SCRIPTS/polybar
symlink_bin polybar_backlight $SCRIPTS/polybar
symlink_bin polybar_launch $SCRIPTS/polybar

pushd $HOME/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Iosevka/Regular/complete/Iosevka%20Nerd%20Font%20Complete.ttf
fc-cache -f -v
popd

popd
rm -rf ./polybar
popd
