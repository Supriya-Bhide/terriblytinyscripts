#!/bin/bash
#https://llvm.org/docs/GettingStarted.html#getting-the-source-code-and-building-llvm
#CMAKE: https://llvm.org/docs/CMake.html
#https://llvm.org/docs/WritingAnLLVMPass.html
sudo apt install cmake
sudo apt install ninja-build
sudo apt install clang
sudo apt install git

mkdir packages
cd packages
git clone https://github.com/llvm/llvm-project.git
cd llvm-project
mkdir build
cd build
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ../llvm
cmake --build .
cmake --build . --target install
cmake -DCMAKE_INSTALL_PREFIX=/tmp/llvm -P cmake_install.cmake

# Add: 
# export PATH="/home/supriya/packages/llvm-project/build/bin:${PATH}"
# to ~/.bashrc
