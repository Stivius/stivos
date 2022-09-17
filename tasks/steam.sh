#!/bin/bash

wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
sudo apt install -y ./steam.deb
rm ./steam.deb

