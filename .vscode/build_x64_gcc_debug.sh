#!/bin/bash

# build/index.html

ROOT_DIR="$(cd "$(dirname "$0")/../" 1>/dev/null 2>/dev/null && pwd)"

cd "${ROOT_DIR}/build"
rm -rf linux_intel64_gcc_cc*_libc*_kernel*_debug

cd "${ROOT_DIR}/src/"
make tbbmalloc_debug compiler=gcc arch=intel64 -j32 
make rml_debug compiler=gcc arch=intel64 -j32 
make tbb_debug compiler=gcc arch=intel64 -j32