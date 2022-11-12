#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

pushd $HOME/external
git_clone_repo https://github.com/dunst-project/dunst.git
pushd dunst
make
sudo make install
../utils/template.sh $DOTFILES/.config/dunst/dunstrc.template ../tasks.env
symlink_config dunst
popd
rm -rf ./dunst
popd
