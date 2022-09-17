#!/bin/bash

sudo apt install -y gpg

pushd $HOME

gpg --import public.asc
gpg --import private.asc

popd

