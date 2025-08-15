#!/bin/bash

directory=$1
current_dir=$(pwd)
echo current directory:"$current_dir"
src_dir="$current_dir"/src  

echo \*.c files directory:"$src_dir"

# lloutput() {
#     clang-14 -fno-discard-value-names -emit-llvm -O0 -Xclang -disable-O0-optnone -g -S "$c_file" -o "${c_file%.*}.ll"
#     opt-14 -instnamer -mem2reg -mergereturn -aa-pipeline='basic-aa' -S "${c_file%.*}.ll" > "${c_file%.*}.slim.ll"
# }

 for c_file in "$src_dir"/*.c; do
    clang-14 -fno-discard-value-names -emit-llvm -O0 -Xclang -disable-O0-optnone -g -S "$c_file" -o "${c_file%.*}.ll"
    opt-14 -instnamer -mem2reg -mergereturn -aa-pipeline='basic-aa' -S "${c_file%.*}.ll" > "${c_file%.*}.slim.ll"
 done

 cd "$src_dir"

 mkdir llFiles
 mkdir slimllFiles

 mv *.slim.ll slimllFiles
 mv *.ll llFiles

cd llFiles

llvm-link *.ll -o=output.bc
llvm-dis output.bc -o=output.ll