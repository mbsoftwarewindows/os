include Make.config

all:
	make -C kernel
	qemu-system-x86_64 -kernel kernel/$(KERNELNAME)

clean:
	make -C kernel clean