#!/bin/bash

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

ln -s $DOTFILES/.config/kitty $HOME/.config/kitty

# FIXME include config file with colors that are generated from Xresources
