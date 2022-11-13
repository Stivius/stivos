#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

pushd $HOME
git_clone_private_repo zettelkasten
popd
