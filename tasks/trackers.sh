#!/bin/bash

pushd $HOME

git clone git@github-Stivius:Stivius/productivity.git
mv productivity .productivity

git clone git@github-Stivius:Stivius/finances.git
mv finances .finances

git clone git@github-Stivius:Stivius/todo.txt.git
mv todo.txt .todo

popd
