#!/bin/bash

sudo apt update
sudo apt install -y \
    neofetch \
    xfce4-power-manager \
    redshift \
    pass \
    jq \
    pass-extension-otp \
    gpg \
    xdotool \
    ripgrep \
    xautolock \
    x11-xserver-utils \
    pulsemixer \
    playerctl \
    blueman \
    git \
    zathura \
    g++ \
    apt-transport-https \
    feh \
    incronwait \
    picom \
    cargo \
    fd-find

sudo mkdir -p /etc/sudoers.d
sudo mkdir -p /etc/modprobe.d
sudo mkdir -p /etc/udev/rules.d

mkdir $HOME/Projects
pushd $HOME/Projects

git clone git@github.com:Stivius/dotfiles.git
ln -s $HOME/Projects/dotfiles $HOME/dotfiles
ln -s $HOME/Projects/dotfiles/scripts $HOME/scripts

ln -s $SCRIPTS/commit_git $HOME/.local/bin/commit_git
ln -s $SCRIPTS/sync_git $HOME/.local/bin/sync_git
ln -s $SCRIPTS/watch_dir $HOME/.local/bin/watch_dir

popd
