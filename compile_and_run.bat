if not exist build\ mkdir build
nasm -fwin64 boot_utils/print.asm -o build/print.o
nasm -fbin boot.asm -o build/boot.bin

qemu-system-x86_64 -fda build/boot.bin