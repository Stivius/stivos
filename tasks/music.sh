#!/bin/bash
source ../utils/utils.sh

sudo apt install -y playerctl pulsemixer 

symlink_bin change_volume $SCRIPTS/system
symlink_bin mute_volume $SCRIPTS/system
symlink_bin polybar_micro $SCRIPTS/polybar
symlink_bin polybar_music $SCRIPTS/polybar
symlink_bin polybar_play_pause $SCRIPTS/polybar
