#!/bin/bash

pushd $HOME

git clone git@github-Stivius:Stivius/finances.git
mv finances .finances

sudo apt-get install -y build-essential cmake doxygen \
     libboost-system-dev libboost-dev python3-dev gettext git \
     libboost-date-time-dev libboost-filesystem-dev \
     libboost-iostreams-dev libboost-python-dev libboost-regex-dev \
     libboost-test-dev libedit-dev libgmp3-dev libmpfr-dev texinfo tzdata

git clone https://github.com/ledger/ledger
pushd ledger
cmake -DCMAKE_INSTALL_PREFIX= .
make -j$(nproc)
DESTDIR=$HOME/.local make install
popd
rm -rf ./ledger

popd
