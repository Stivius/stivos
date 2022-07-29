#!/bin/bash

sudo apt install -y libxcb-xinerama0
wget https://github.com/ankitects/anki/releases/download/2.1.49/anki-2.1.49-linux.tar.bz2
tar xaf anki-2.1.49-linux.tar.bz2
pushd anki-2.1.49-linux
sudo ./install.sh
popd
rm anki-2.1.49-linux.tar.bz2
