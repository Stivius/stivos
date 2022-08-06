#!/bin/bash

wget https://github.com/rs/curlie/releases/download/v1.6.9/curlie_1.6.9_linux_amd64.deb
sudo apt install -y ./curlie_1.6.9_linux_amd64.deb
rm ./curlie_1.6.9_linux_amd64.deb
