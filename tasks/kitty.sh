#!/bin/bash
source ../utils/error.sh
source ../utils/utils.sh

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

symlink_config kitty
