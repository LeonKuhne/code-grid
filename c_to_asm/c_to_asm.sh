#!/bin/bash

if [ -z $1 ]; then echo "Usage: ./c_to_asm.sh <file.c>"; exit 0; fi

name=$(basename $1 .c)
c_file=$1
bin_file="$name"
out_file="$name.o"
s_file="$name.s"

# C TO BINARY
if [ ! -f "$c_file" ]; then echo "File not found: $1"; exit 0; fi
gcc -O3 $c_file -o $bin_file
#objdump -d $bin_file > $s_file # too much junk
#gcc -Wall -S $c_file -o $s_file # not 'real' enough

# BINARY TO ASSEMBLY
#ndisasm -b 64 $bin_file | awk '{print $3, $4, $5, $6, $7, $8, $9, $10}' > $s_file
#rm $bin_file

# testing: create two files, one using gcc -S and the other using objdump -D
gcc -Wall -S $c_file -o $name"_gcc.s"
objdump -D $bin_file > $name"_objdump.s"

# ASSEMBLY BACK TO BINARY
#nasm -f elf64 $s_file -o $out_file
#echo "Testing $s_file"
#as $s_file -o $bin_file
#./$bin_file

# MOVE ASM TO PARENT
#mv $s_file ..