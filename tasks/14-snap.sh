#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo snap install \
    telegram-desktop \
    spotify \
    slack \
    vlc \
    postman

sudo snap install --classic rider
