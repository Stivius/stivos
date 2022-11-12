#!/bin/bash
source ../utils/error.sh
source ../utils/utils.sh

pushd $HOME

git_clone_private_repo zettelkasten

popd
