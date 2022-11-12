#!/bin/bash
source $(dirname $(realpath -s $0))/../utils/error.sh
source $(dirname $(realpath -s $0))/../utils/utils.sh

sudo apt install -y playerctl pulsemixer 

symlink_bin change_volume $SCRIPTS/system
symlink_bin mute_volume $SCRIPTS/system
