#!/bin/bash
source ../utils/error.sh
source ../utils/utils.sh

sudo apt install -y gpg

pushd $HOME

gpg --import public.asc
gpg --import private.asc
echo 'GPG keys are imported'

popd

