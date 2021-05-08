SDCC_FLAGS = -I./include -I./libs -I./src -o objs/ 
OUTPUT_NAME = objs/main.ihx
BOOTLOADER_NAME = Boot.hex
MOVE = mv
HEX_FILE = Nrf24Mote.hex

all:
	python3 tools/set_build_data.py
	sdcc -c $(SDCC_FLAGS) ./libs/Delay.c
	sdcc -c $(SDCC_FLAGS) ./libs/Common.c
	sdcc -c $(SDCC_FLAGS) ./src/spi.c
	sdcc -c $(SDCC_FLAGS) ./src/RF24.c
	sdcc -c $(SDCC_FLAGS) ./src/i2c.c
	sdcc -c $(SDCC_FLAGS) ./src/hdc1080.c
	sdcc -c $(SDCC_FLAGS) ./src/battery.c
	sdcc -c $(SDCC_FLAGS) ./src/utils.c
	sdcc -c $(SDCC_FLAGS) ./src/build.c

#the chip has 18k of flash, but 4k can be allocated for boot rom -> only 14k = 14336 is allocated here.
	sdcc $(SDCC_FLAGS)	 main.c \
						 objs/Common.rel \
						 objs/Delay.rel \
						 objs/RF24.rel \
						 objs/hdc1080.rel \
						 objs/i2c.rel \
						 objs/spi.rel \
						 objs/battery.rel \
						 objs/utils.rel \
						 --data-loc 0x20 \
						 --code-size 18360 \
						 --iram-size 128 \
						 --idata-loc 0x80 \
						 --xram-size 768 \
						 --stack-size 0x60

	$(MOVE) $(OUTPUT_NAME) $(HEX_FILE)
bootloader:
	sdcc --opt-code-size -c $(SDCC_FLAGS) ./libs/Delay.c
	sdcc --opt-code-size -c $(SDCC_FLAGS) ./libs/Common.c
	sdcc --opt-code-size -c $(SDCC_FLAGS) ./src/utils.c
	

#the chip has 18k of flash, but 4k can be allocated for boot rom -> only 14k = 14336 is allocated here.
	sdcc $(SDCC_FLAGS)	 bootloader.c \
						 objs/Common.rel \
						 objs/Delay.rel \
						 objs/utils.rel \
						 --opt-code-size \
						 --data-loc 0x20 \
						 --code-size 18360 \
						 --iram-size 128 \
						 --idata-loc 0x80 \
						 --xram-size 768 \
						 --stack-size 0x60 \

	mv objs/bootloader.ihx $(BOOTLOADER_NAME)
clean:	
	rm objs/* *.hex

erase:
	./NuLink.exe -e ALL

prog:
	
	./NuLink.exe -e APROM
	./NuLink.exe -w APROM $(HEX_FILE)
	./NuLink.exe -v APROM $(HEX_FILE)
config:
	./NuLink.exe -w CFG0 0xFF73FFFF

# Compiler arguments:
# --data-loc <Value> The start location of the internal ram data segment, the default value is 0x30
# --idata-loc <Value> The start location of the indirectly addressable internal ram, default value is 0x80
# --stack-loc <Value> The initial value of the stack pointer. The default value of the stack pointer is 0x07 
# if only register bank 0 is used, if other register banks are used then the stack pointer is initialized to the location above the highest register bank used. 
# --iram-size <Value> Causes the linker to check if the interal ram usage is within limits of the given value.
# DEFAULT --xram-loc <Value> The start location of the external ram, default value is 0
# DEFAULT --code-loc <Value> The start location of the code segment , default value 0

