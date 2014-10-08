NAME   = fpbench
O      = o
RM     = rm -f
PROG   = $(NAME)

#CC =	gcc
CC = /opt/gcw0-toolchain/usr/bin/mipsel-gcw0-linux-uclibc-gcc

LDFLAGS =	-lrt

#CFLAGS =	-DPENTIUM_M -Wall -std=gnu99 -O3 -funroll-loops -march=pentium-m -mtune=pentium-m 
CFLAGS = -Wall -std=gnu99 -O2 -funroll-loops 

OBJS =	$(NAME).$(O) 

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJS) $(LDFLAGS)

clean:
	$(RM) $(PROG) *.$(O) *.swp .*.swp

