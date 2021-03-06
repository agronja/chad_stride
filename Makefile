CC= 	gcc
CFLAGS=	-Wall -std=gnu99 -O3
LIB= 	-lncurses
PREFIX= /usr/local

chad_stride: 	chad_stride.c
	$(CC) $(CFLAGS) -o $@ $^ $(LIB)

install: 	chad_stride
	mkdir -p $(PREFIX)/bin
	install -m 755 chad_stride $(PREFIX)/bin/chad_stride
	ln -s $(PREFIX)/bin/chad_stride $(PREFIX)/bin/cs

uninstall:
	rm -f $(PREFIX)/bin/chad_stride
	rm -f $(PREFIX)/bin/cs

clean:
	rm -f chad_stride
