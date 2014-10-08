NAME   = fpbench
O      = o
RM     = rm -f
PROG   = $(NAME)

# My Pentium-M 32-bit Intel laptop:
#CC =	gcc
#CFLAGS = -Wall -std=gnu99 -O2 -funroll-loops -march=pentium-m -mtune=pentium-m 

# GCW Zero OpenDingux:
CC = /opt/gcw0-toolchain/usr/bin/mipsel-gcw0-linux-uclibc-gcc
CFLAGS =  -Wall -std=gnu99 -O2 -funroll-loops 

# Dingoo OpenDingux:
#CC	= /opt/opendingux-toolchain/usr/bin/mipsel-unknown-linux-uclibc-gcc
#CFLAGS = -static -msoft-float -Wall -std=gnu99 -O2 -funroll-loops 

# Wiz toolchain:
#CC	= /opt/wiz-toolchain-4.7.3-2/bin/arm-wiz-linux-gnu-gcc
#CFLAGS = -static -msoft-float -Wall -std=gnu99 -O2 -funroll-loops 


# Recommended to uncomment this: GCC produces slightly-more unrolled code this way (verified better performance)
CFLAGS	+= -DMANUAL_UNROLL

LDFLAGS =	-lm

OBJS =	$(NAME).$(O) 

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJS) $(LDFLAGS)

asm_output:
	$(CC) $(CFLAGS) -S fpbench.c

clean:
	$(RM) $(PROG) *.$(O) *.s *.swp .*.swp

