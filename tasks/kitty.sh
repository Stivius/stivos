#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

../utils/template.sh $DOTFILES/.config/kitty/kitty.conf.template ../tasks.env
symlink_config kitty
