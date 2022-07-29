#!/bin/bash

pushd $HOME

gpg --import master-pub.gpg
gpg --import master-sec.gpg
gpg --import subkeys-pub.gpg
gpg --import subkeys-sec.gpg

popd

