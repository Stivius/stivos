#!/bin/bash
source ../utils/error.sh
source ../utils/utils.sh

pushd $HOME/Projects

git_clone_private_repo ledger-parsers
git_clone_private_repo plain-text-productivity
git_clone_private_repo obsidian-clipper

popd
