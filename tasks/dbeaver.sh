#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

install_deb_package https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
