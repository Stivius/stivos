#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt install -y libnotify-dev libxrandr-dev libgdk-pixbuf2.0-dev libxinerama-dev libxss-dev libpango1.0-dev

pushd $HOME/external
git_clone_repo https://github.com/dunst-project/dunst.git
pushd dunst
sudo WAYLAND=0 make install
bash $STIVOS/utils/template.sh $DOTFILES/.config/dunst/dunstrc.template $STIVOS/tasks.env
symlink_config dunst
popd
rm -rf ./dunst
popd
