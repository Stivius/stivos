#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

pushd $HOME

git_clone_repo https://github.com/junegunn/fzf.git "--depth=1"
mv fzf .fzf
$HOME/.fzf/install

popd

