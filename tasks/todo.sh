#!/bin/bash

pushd $HOME

git clone git@github.com:Stivius/todo.txt.git
mv todo.txt .todo

ln -s $HOME/.todo/todo.sh $HOME/.local/bin/todo.sh
ln -s $HOME/.todo/bash-completions/todo $HOME/.local/share/bash-completions/todo

popd
