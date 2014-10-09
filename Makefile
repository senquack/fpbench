NAME   = fpbench
O      = o
RM     = rm -f
PROG   = $(NAME)

CFLAGS = -Wall -std=gnu99 -O2 
LDFLAGS = -lm

# My Pentium-M 32-bit Intel laptop:
#CC =	gcc
#CFLAGS += -march=pentium-m
#CFLAGS += -mfpmath=sse


#BUILDS AVAILABLE:
# GCW Zero OpenDingux:
CC = /opt/gcw0-toolchain/usr/bin/mipsel-gcw0-linux-uclibc-gcc

# Dingoo OpenDingux:			(also used to generate GCW-Zero soft-float version)
#CC	= /opt/opendingux-toolchain/usr/bin/mipsel-unknown-linux-uclibc-gcc
#CFLAGS += -static -msoft-float

# Open2x GP2X Toolchain:	Can be used to generate binaries for both Wiz and GP2X
#CC	= /opt/open2x/gcc-4.1.1-glibc-2.3.6/bin/arm-open2x-linux-gcc
#CFLAGS += -static -msoft-float -I/opt/open2x/gcc-4.1.1-glibc-2.3.6/arm-open2x-linux/include
#LDFLAGS +=	-L/opt/open2x/gcc-4.1.1-glibc-2.3.6/arm-open2x-linux/lib


# *Strongly* recommended to uncomment one of these for performance:
#CFLAGS 	+= -funroll-loops		// Generally, this produces loops unrolled to 8 iterations or sometimes slightly more
#CFLAGS	+= -DMANUAL_UNROLL_4
CFLAGS	+= -DMANUAL_UNROLL_32

OBJS =	$(NAME).$(O) 

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJS) $(LDFLAGS)

asm_output:
	$(CC) $(CFLAGS) -S fpbench.c

clean:
	$(RM) $(PROG) *.$(O) *.s *.swp .*.swp
