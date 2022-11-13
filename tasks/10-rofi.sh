#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt install -y rofi

symlink_bin rofi_bluetooth $SCRIPTS/rofi
symlink_bin rofi_books $SCRIPTS/rofi
symlink_bin rofi_search $SCRIPTS/rofi
symlink_bin rofi_configs $SCRIPTS/rofi
symlink_bin rofi_scripts $SCRIPTS/rofi
symlink_bin rofi_shortcuts $SCRIPTS/rofi
symlink_bin rofi_kill_processes $SCRIPTS/rofi
symlink_bin get_weather $SCRIPTS/system
