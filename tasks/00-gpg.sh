#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt install -y gpg

gpg --import public.asc
gpg --import private.asc
echo 'GPG keys are imported'
