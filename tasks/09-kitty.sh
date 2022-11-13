#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

bash $STIVOS/utils/template.sh $DOTFILES/.config/kitty/kitty.conf.template $STIVOS/tasks.env
symlink_config kitty
create_symlink kitty $HOME/.local/kitty.app/bin $HOME/.local/bin
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator `which kitty` 90
