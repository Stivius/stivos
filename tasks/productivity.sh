#!/bin/bash

pushd $HOME

git clone git@github-Stivius:Stivius/productivity.git
mv productivity .productivity

npm i -g @stivius/productivity

popd
