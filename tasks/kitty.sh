#!/bin/bash

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

rm -rf $HOME/.config/kitty && ln -s $DOTFILES/.config/kitty $HOME/.config/kitty
