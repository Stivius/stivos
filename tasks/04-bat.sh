#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

install_deb_package https://github.com/sharkdp/bat/releases/download/v0.21.0/bat-musl_0.21.0_amd64.deb
