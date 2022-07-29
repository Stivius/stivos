#!/bin/bash

wget https://github.com/sharkdp/bat/releases/download/v0.21.0/bat-musl_0.21.0_amd64.deb
sudo apt install -y ./bat-musl_0.21.0_amd64.deb
rm ./bat-musl_0.21.0_amd64.deb
