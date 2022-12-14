#!/bin/bash
source $STIVOS/utils/error.sh
source $STIVOS/utils/utils.sh

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
    incron \
    fd-find \
    vim \
    xclip \
    mlocate \
    curl \
    net-tools \
    ranger \
    python3-pip
echo 'Packages have been installed'

sudo mkdir -p /etc/sudoers.d
sudo mkdir -p /etc/modprobe.d
sudo mkdir -p /etc/udev/rules.d
mkdir -p $HOME/.local/bin
mkdir -p $HOME/.local/bin/helpers
mkdir -p $HOME/.local/share/fonts

mkdir -p $HOME/external
mkdir -p $HOME/Projects
pushd $HOME/Projects

echo 'Directories have been created'

git_clone_private_repo dotfiles
create_symlink dotfiles $HOME/Projects/ $HOME
create_symlink scripts $HOME/Projects/dotfiles $HOME

create_symlink .bashrc $HOME/dotfiles $HOME
create_symlink .profile $HOME/dotfiles $HOME
create_symlink .inputrc $HOME/dotfiles $HOME
create_symlink .Xresources $HOME/dotfiles $HOME
create_symlink .gitconfig $HOME/dotfiles $HOME

source $HOME/.bashrc
source $HOME/.profile

symlink_bin commit_git $SCRIPTS
symlink_bin sync_git $SCRIPTS
symlink_bin watch_dir $SCRIPTS

echo 'Symlinks have been created'

popd
