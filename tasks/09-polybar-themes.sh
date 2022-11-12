#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

pushd $HOME

git_clone_repo https://github.com/adi1090x/polybar-themes.git "--depth=1"

pushd polybar-themes

chmod +x setup.sh
./setup.sh

popd
rm -rf ./polybar-themes
popd
