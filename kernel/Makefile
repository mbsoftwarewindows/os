include ../Make.config
include arch/$(ARCH)/Make.conf
include Make.conf

%.o: %.c
	$(CC) -c $< -o $@ -std=gnu99 -ffreestanding -O2 -Wall -Wextra

%.o: %.s
	$(AS) $< -o $@

all: $(OBJECTS)
	$(CC) -T arch/$(ARCH)/linker.ld -o $(KERNELNAME) -ffreestanding -O2 -nostdlib $(OBJECTS) -lgcc

clean:
	rm -f $(OBJECTS) $(KERNELNAME)