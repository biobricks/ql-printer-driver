CFLAGS=-g
CFLAGS+= $(shell pkg-config --cflags libpng)
LDFLAGS+= $(shell pkg-config --libs libpng)

all: ql_print.c
	gcc $(CFLAGS) -o ql_print ql_print.c $(LDFLAGS)

clean:
	rm ql570

install:
	cp ql_print /usr/local/bin/
