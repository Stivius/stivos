#!/bin/bash

sudo apt install -y gpg

pushd $HOME

gpg --import public.asc
gpg --import private.asc
echo 'GPG keys are imported'

popd

