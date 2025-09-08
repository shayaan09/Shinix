#Shinix's Bootloader MakeFile

bootloader.bin: boot/boot.asm
	nasm -f bin boot/boot.asm -o bootloader.bin

run: bootloader.bin
	qemu-system-x86_64 -drive format=raw,file=bootloader.bin

clean:
	rm -f bootloader.bin