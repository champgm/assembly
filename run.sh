#!/usr/bin/env bash

program_name="$1"

nasm -f elf "${program_name}".asm
ld -m elf_i386 -s -o "${program_name}" "${program_name}".o
./"${program_name}"
