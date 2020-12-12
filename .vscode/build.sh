#!/bin/bash

# build/index.html

MY_DIR="$(readlink -f ""$(dirname "$(readlink -f "${0}")")"/../src/")"
cd ${MY_DIR}

make tbb_release compiler=gcc arch=intel64 -j &
make tbb_release compiler=gcc arch=ia32 -j &
make tbb_release compiler=clang arch=intel64 -j &
make tbb_release compiler=clang arch=ia32 -j &
wait