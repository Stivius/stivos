#!/bin/bash

pushd $HOME

git clone https://github.com/dunst-project/dunst.git

pushd dunst

make
sudo make install
rm -rf $HOME/.config/dunst && ln -s $DOTFILES/.config/dunst $HOME/.config/dunst

popd
rm -rf ./dunst
popd
