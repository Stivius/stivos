#!/bin/bash

sudo apt install -y gpg

pushd $HOME

gpg --import master-pub.gpg
gpg --import master-sec.gpg
gpg --import subkeys-pub.gpg
gpg --import subkeys-sec.gpg

popd

