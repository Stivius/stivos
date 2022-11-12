#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

install_deb_package https://dl.discordapp.net/apps/linux/0.0.20/discord-0.0.20.deb
