#!/bin/bash

pushd $HOME

git clone git@github.com:Stivius/finances.git
mv finances .finances

# FIXME ledger

popd
