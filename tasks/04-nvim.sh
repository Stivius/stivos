#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

pushd $HOME

wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.tar.gz
tar xvf nvim-linux64.tar.gz
cp -r nvim-linux64/* $HOME/.local
rm -rf nvim-linux64 nvim-linux64.tar.gz

popd

