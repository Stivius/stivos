#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

install_deb_package https://github.com/rs/curlie/releases/download/v1.6.9/curlie_1.6.9_linux_amd64.deb
