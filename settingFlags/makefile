.SILENT:
all: compile

compile:
	nasm -f elf32 code.asm
	ld -m elf_i386 code.o -o run

link:
	ld -m elf_i386 code.o -o run
