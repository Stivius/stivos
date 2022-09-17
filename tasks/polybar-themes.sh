#!/bin/bash

pushd $HOME

git clone --depth=1 https://github.com/adi1090x/polybar-themes.git

pushd polybar-themes

chmod +x setup.sh
./setup.sh

popd
rm -rf ./polybar-themes
popd

