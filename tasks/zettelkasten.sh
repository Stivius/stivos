#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

pushd $HOME
git_clone_private_repo zettelkasten
popd
