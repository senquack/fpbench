NAME   = fpbench
O      = o
RM     = rm -f
PROG   = $(NAME)

#CC =	gcc
CC = /opt/gcw0-toolchain/usr/bin/mipsel-gcw0-linux-uclibc-gcc

LDFLAGS =	-lrt

#CFLAGS =	-DPENTIUM_M -Wall -std=gnu99 -ffast-math -O3 -funroll-loops -march=pentium-m -mtune=pentium-m 
#CFLAGS = -g -DPENTIUM_M -Wall -std=gnu99 -ffast-math -O2 -march=pentium-m -mtune=pentium-m 
CFLAGS = -Wall -std=gnu99 -ffast-math -O3 -funroll-loops -I/opt/gcw0-toolchain/usr/mipsel-gcw0-linux-uclibc/sysroot/usr/include/
#CFLAGS = -g -Wall -std=gnu99 -ffast-math -O2 -I/opt/gcw0-toolchain/usr/mipsel-gcw0-linux-uclibc/sysroot/usr/include/

OBJS =	$(NAME).$(O) 

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) -o $(PROG) $(OBJS) $(LDFLAGS)

clean:
	$(RM) $(PROG) *.$(O) *.swp .*.swp

