CLANG=/home/pierre/Desktop/tfork/llvm-project/prefix/bin/clang
LLC=/home/pierre/Desktop/tfork/llvm-project/prefix/bin/llc

CFLAGS=-g
LDFLAGS=

test: test.c
	$(CLANG) $(CFLAGS) $^ -o $@ $(LDFLAGS)

objdump: test
	objdump --source $^ > /tmp/objdump.txt && vim /tmp/objdump.txt

clean:
	rm -rf *.o *.s *.ll
