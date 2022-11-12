#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

sudo apt install -y libxcb-xinerama0
pushd $HOME/external
wget https://github.com/ankitects/anki/releases/download/2.1.49/anki-2.1.49-linux.tar.bz2
tar xaf anki-2.1.49-linux.tar.bz2
pushd anki-2.1.49-linux
sudo ./install.sh
popd
popd
rm anki-2.1.49-linux.tar.bz2
