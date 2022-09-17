#!/bin/bash

sudo apt update
sudo apt install -y \
    neofetch \
    jq \
    xdotool \
    ripgrep \
    x11-xserver-utils \
    blueman \
    git \
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

rm -f $HOME/.bashrc && ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
rm -f $HOME/.profile && ln -s $HOME/dotfiles/.profile $HOME/.profile
rm -f $HOME/.inputrc && ln -s $HOME/dotfiles/.inputrc $HOME/.inputrc
rm -f $HOME/.Xresources && ln -s $HOME/dotfiles/.Xresources $HOME/.Xresources
rm -f $HOME/.gitconfig && ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig

ln -s $SCRIPTS/commit_git $HOME/.local/bin/commit_git
ln -s $SCRIPTS/sync_git $HOME/.local/bin/sync_git
ln -s $SCRIPTS/watch_dir $HOME/.local/bin/watch_dir

popd
