#!/bin/bash
source ../utils/utils.sh

pushd $HOME

git_clone_repo https://github.com/dunst-project/dunst.git

pushd dunst

make
sudo make install
symlink_config dunst

popd
rm -rf ./dunst
popd
