#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

sudo apt install -y gpg

gpg --import public.asc
gpg --import private.asc
echo 'GPG keys are imported'
