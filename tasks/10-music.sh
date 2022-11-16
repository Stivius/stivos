#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt install -y playerctl pulsemixer 

symlink_bin change_volume $SCRIPTS/system
symlink_bin mute_volume $SCRIPTS/system
