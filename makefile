.SILENT: 
all: .compile

.compile:
	nasm -f elf printfUse.asm
	ld -m elf_i386 printfUse.o -dynamic-linker /lib/ld-linux.so.2 -lc -o run
	./run
