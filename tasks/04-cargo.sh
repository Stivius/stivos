#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
cargo install exa navi
