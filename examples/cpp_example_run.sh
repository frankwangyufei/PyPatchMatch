#! /bin/bash
#
# cpp_example_run.sh
# Copyright (C) 2020 Jiayuan Mao <maojiayuan@gmail.com>
#
# Distributed under terms of the MIT license.
#

set -x

CFLAGS="-std=c++14 -O2 $(pkg-config --cflags opencv4)"
LDFLAGS="$(pkg-config --libs opencv4)"
g++ $CFLAGS cpp_example.cpp -I../csrc/ -L../ -lpatchmatch $LDFLAGS -o cpp_example.exe
LD_LIBRARY_PATH=../:$LD_LIBRARY_PATH time ./cpp_example.exe

