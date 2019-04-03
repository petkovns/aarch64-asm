
all:
	aarch64-linux-gnu-as -c main.s -o main.o
	aarch64-linux-gnu-gcc -static -o main main.o

run:
	qemu-aarch64 ./first

