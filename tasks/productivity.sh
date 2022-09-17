#!/bin/bash

pushd $HOME

git clone git@github.com:Stivius/productivity.git
mv productivity .productivity

# FIXME .npmrc

npm i -g @stivius/productivity

popd
