#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

install_deb_package https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
