# Top level makefile, the real shit is at src/Makefile

CFLAGS="-O0 -fPIC -tfork"
CC=/home/pierre/Desktop/tfork/llvm-project/prefix/bin/clang

all: redis

redis: deps
	cd src && CC=$(CC) $(MAKE) CFLAGS=$(CFLAGS)

.PHONY: deps

deps: hiredis lua geohash

hiredis:
	cd deps/hiredis && CC=$(CC) make CFLAGS=$(CFLAGS) static

lua:
	cd deps/lua && CC=$(CC) make CFLAGS=$(CFLAGS) generic

geohash:
	cd deps/geohash-int && CC=$(CC) make CFLAGS=$(CFLAGS)

install:
	cd src && $(MAKE) $@

clean:
	make -C src clean
	make -C deps/hiredis clean
	make -C deps/lua clean
	make -C deps/geohash-int clean

.PHONY: install
