#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

install_deb_package https://zoom.us/client/latest/zoom_amd64.deb
