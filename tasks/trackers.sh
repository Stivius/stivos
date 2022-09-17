#!/bin/bash

pushd $HOME

git clone git@github.com:Stivius/productivity.git
mv productivity .productivity

git clone git@github.com:Stivius/finances.git
mv finances .finances

git clone git@github.com:Stivius/todo.txt.git
mv todo.txt .todo

popd
