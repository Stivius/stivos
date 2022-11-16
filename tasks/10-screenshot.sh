#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

sudo apt install -y maim

symlink_bin take_screenshot $SCRIPTS/system
