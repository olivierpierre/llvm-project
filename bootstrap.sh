#!/bin/bash

rm -rf build prefix &> /dev/null

mkdir build
mkdir prefix

cd build
cmake -G "Unix Makefiles" -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_INSTALL_PREFIX=$PWD/../prefix -DLLVM_TARGETS_TO_BUILD="X86" -DLLVM_USE_LINKER=lld -DLLVM_ENABLE_RTTI=true -DLLVM_CCACHE_BUILD=true ../llvm
make -j`nproc` install  
cd -

