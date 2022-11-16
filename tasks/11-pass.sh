#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

pushd $HOME

sudo apt install -y pass pass-extension-otp
git_clone_private_repo pass
rm -rf .password-store
mv pass .password-store

popd

# rofi pass
