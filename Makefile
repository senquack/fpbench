NAME   	= fpbench
RM     	= rm -rf
SOURCES 	= src/fpbench.c src/misc.c src/bench_add.c src/bench_mul.c src/bench_div.c \
				src/bench_sqrt.c src/bench_conv.c
OBJS 		= $(SOURCES:.c=.o)
PROG   	= $(NAME)

CFLAGS = -Wall -std=gnu99 -O2 
LDFLAGS = -lm

#BUILDS AVAILABLE:

# -----> (GCW ZERO)  OpenDingux:
CC = /opt/gcw0-toolchain/usr/bin/mipsel-gcw0-linux-uclibc-gcc

# -----> (IMGTEC CI20 jz4780)
#CC = /opt/gcw0-toolchain/usr/bin/mipsel-gcw0-linux-uclibc-gcc
#CFLAGS += -static

# -----> (DINGOO A320) OpenDingux:	(also used to generate GCW-Zero soft-float version)
#CC	= /opt/opendingux-toolchain/usr/bin/mipsel-unknown-linux-uclibc-gcc
#CFLAGS += -static -msoft-float

# -----> (WIZ/GP2X) Open2x GP2X Toolchain
# On ARM platforms, *especially* the GPH Wiz, better performance is achieved with -funroll-loops -DMANUAL_UNROLL_4
#	versus -DMANUAL_UNROLL_32
#CC	= /opt/open2x/gcc-4.1.1-glibc-2.3.6/bin/arm-open2x-linux-gcc
#CFLAGS += -static -msoft-float -I/opt/open2x/gcc-4.1.1-glibc-2.3.6/arm-open2x-linux/include
#LDFLAGS +=	-L/opt/open2x/gcc-4.1.1-glibc-2.3.6/arm-open2x-linux/lib

# -----> My Pentium-M 32-bit Intel laptop:
#CC =	gcc
#CFLAGS += -march=pentium-m -mfpmath=387
#CFLAGS += -march=pentium-m -mfpmath=both

.PHONY:	asm clean
all:	$(PROG) asm

$(PROG): $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDFLAGS) 
	chmod +x $@

$(OBJS) : src/fpbench.h
src/fpbench.o :	src/misc.h src/bench_add.h src/bench_mul.h \
						src/bench_div.h src/bench_sqrt.h src/bench_conv.h
src/misc.o:			src/misc.h
src/bench_add.o:	src/bench_add.h
src/bench_mul.o:	src/bench_mul.h
src/bench_div.o:	src/bench_div.h
src/bench_sqrt.o:	src/bench_sqrt.h
src/bench_conv.o:	src/bench_conv.h


# Assembly-generation, build_info.txt generation, tar file packing:
ASMS 		= $(SOURCES:.c=.s)

.c.s:
	$(CC) $(CFLAGS) -S $< -o $@

TAR_FILE	= executable_and_assembly.tar.bz2
asm:	$(ASMS) 
	@echo "\n**********************************************************************"
	@echo "* Removing old asm/ folder and creating new one..."
	@echo "**********************************************************************"
	-rm -rf asm/
	-mkdir asm
	@echo "\n**********************************************************************"
	@echo "* Generating assembly output files..."
	@echo "**********************************************************************"
	$(CC) $(CFLAGS) -S $(SOURCES)
	@echo "\n**********************************************************************"
	@echo "* Copying assembly output files and binary to asm/ folder..."
	@echo "**********************************************************************"
	-mv *.s asm/
	-cp fpbench asm/
	@echo "\n**********************************************************************"
	@echo "* Gathering compiler information into asm/build_info.txt..."
	@echo "**********************************************************************"
	-echo "COMPILER: $(CC)\n" >> asm/build_info.txt
	-echo "COMPILER VERSION: " >> asm/build_info.txt
	-$(CC) -v  >> asm/build_info.txt 2>&1
	-echo "CFLAGS: $(CFLAGS)" >> asm/build_info.txt
	tar cfvj $(TAR_FILE) asm/ 
	@echo "\n**********************************************************************"
	@echo "* DONE: asm/ folder is now packed into $(TAR_FILE)"
	@echo "**********************************************************************"


clean:
	$(RM) $(PROG) src/*.s src/*.o *.swp .*.swp $(TAR_FILE) asm/
