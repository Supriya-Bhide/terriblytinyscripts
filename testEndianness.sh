#!/bin/bash
#Author: Supriya Bhide 22d0364 (09/05/2024)
#Source of C code: stackoverflow: https://stackoverflow.com/a/4181991/15554881

# Compile and execute C code to check endianness
gcc -xc - <<EOF -o endian_check && ./endian_check
#include<stdio.h>

int main() {
    int n = 1;
    if (*(char *)&n == 1) {
        printf("Little Endian\u1F9D1\n");
    } else {
        printf("Big Endian\n");
    }
    return 0;
}
EOF
