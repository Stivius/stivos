#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

pushd $HOME

git_clone_repo https://github.com/junegunn/fzf.git "--depth=1"
rm -rf .fzf
mv fzf .fzf
$HOME/.fzf/install --all

popd

