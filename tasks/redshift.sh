#!/bin/bash

sudo apt install -y redshift

rm -rf $HOME/.config/redshift && ln -s $DOTFILES/.config/redshift $HOME/.config/redshift
