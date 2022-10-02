#!/bin/bash

pushd $HOME

git clone git@github.com:Stivius/productivity.git
mv productivity .productivity

npm i -g @stivius/productivity

popd
