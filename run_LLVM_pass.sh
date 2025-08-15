#Author: Supriya Bhide

echo $1
if [ -z "$1" ]
then
	echo "Enter in the following format:"
	echo "./comp_run_pass.sh <C-filename-without-extension>"
	exit
fi
# clear
#cd ..
#ninja
#cd Testcases
#Using "clang -fno-discard-value-names" to preserve var names

#compile the c file using clang to generate bitcode (.bc file) & human readable code (.ll file) respectively
clang -fno-discard-value-names -emit-llvm -c $1.c -o $1.bc  
clang -fno-discard-value-names -emit-llvm -S -c $1.c -o $1.ll
#clang -S -c -Xclang -disable-O0-optnone -fno-discard-value-names -emit-llvm $1.c -o $1.ll
echo done
#/home/packages/llvm-project/build/bin/opt -enable-new-pm=0 -load /home/packages/llvm-project/build/lib/LLVMUNROLL1.so -single-loop-unroll <$1.bc> $1_op.bc

#generate ll file of the output binary
#/home/packages/llvm-project/build/bin/opt -S $1_op.bc -o $1_op.ll


#clang -S -c -Xclang -disable-O0-optnone -fno-discard-value-names -emit-llvm testSVF.c -o testSVF.ll
#/home/packages/llvm-project/build/bin/opt -S -mem2reg testSVF.ll -o testSVF.ll
