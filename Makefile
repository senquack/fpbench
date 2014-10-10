NAME   = fpbench
O      = o
RM     = rm -f
PROG   = $(NAME)

CFLAGS = -Wall -std=gnu99 -O2 
LDFLAGS = -lm



#BUILDS AVAILABLE:
# GCW Zero OpenDingux:
CC = /opt/gcw0-toolchain/usr/bin/mipsel-gcw0-linux-uclibc-gcc
#CFLAGS += -static

# Dingoo OpenDingux:			(also used to generate GCW-Zero soft-float version)
#CC	= /opt/opendingux-toolchain/usr/bin/mipsel-unknown-linux-uclibc-gcc
#CFLAGS += -static -msoft-float

# Open2x GP2X Toolchain:	Can be used to generate binaries for both Wiz and GP2X
# On ARM platforms, *especially* the GPH Wiz, better performance is achieved with -funroll-loops -DMANUAL_UNROLL_4
#	versus -DMANUAL_UNROLL_32
#CC	= /opt/open2x/gcc-4.1.1-glibc-2.3.6/bin/arm-open2x-linux-gcc
#CFLAGS += -static -msoft-float -I/opt/open2x/gcc-4.1.1-glibc-2.3.6/arm-open2x-linux/include
#LDFLAGS +=	-L/opt/open2x/gcc-4.1.1-glibc-2.3.6/arm-open2x-linux/lib

# My Pentium-M 32-bit Intel laptop:
#CC =	gcc
#CFLAGS += -march=pentium-m -mfpmath=387


# *Strongly* recommended to uncomment one of these for performance:
# 1.) UNCOMMENT BOTH OF THESE TWO LINES:	 (Recommended for ARM platforms)
#CFLAGS 	+= -funroll-loops		
#CFLAGS	+= -DMANUAL_UNROLL_4
######## 	-OR-    ##########
# 2.) UNCOMMENT JUST THIS ONE:				(Recommended for non-ARM platforms)
CFLAGS	+= -DMANUAL_UNROLL_32

OBJS =	$(NAME).$(O) 

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJS) $(LDFLAGS)

asm_output:
	$(CC) $(CFLAGS) -S fpbench.c

clean:
	$(RM) $(PROG) *.$(O) *.s *.swp .*.swp
