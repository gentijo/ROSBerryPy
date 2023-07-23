#!/bin/sh

cd /opt/micropython
git submodule update --init --recursive
make -C mpy-cross
cd ports/esp32
make submodules
make
