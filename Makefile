CC = clang++
CFLAGS = -Wall -Wextra -pedantic -Isrc
LLVMLINK = `llvm-config --libs core jit native --cxxflags --ldflags`
LLVM = `llvm-config --cxxflags`

.PHONY: all clean

all: bf

clean:
	find bin -regex .*o | xargs rm -f
	rm -f bin/parser/*cpp
	rm -f bin/parser/*h

bin/tree/modulifier.o: src/tree/modulifier.cpp
	$(CC) $(CFLAGS) -c -o $@ $< $(LLVM)

bin/tree/pprint.o: src/tree/pprint.cpp
	$(CC) $(CFLAGS) -c -o $@ $<

bin/tree/tree.o: src/tree/tree.cpp
	$(CC) $(CFLAGS) -c -o $@ $<

bin/parser/parser.cpp:	src/parser/parser.y
	bison --defines=bin/parser/tokens.tab.h \
	  -o $@ $<

bin/parser/parser.o: bin/parser/parser.cpp
	$(CC) $(CFLAGS) -c -o $@ $<

bin/parser/tokens.cpp:	src/parser/tokens.l
	flex -o $@ $<

bin/parser/tokens.tab.h: bin/parser/parser.cpp

bin/parser/tokens.o: bin/parser/tokens.cpp bin/parser/tokens.tab.h
	$(CC) $(CFLAGS) -c -o $@ $<

bin/main.o: src/main.cpp
	$(CC) $(CFLAGS) -c -o $@ $< $(LLVM)

bin/main: bin/main.o bin/parser/parser.o bin/parser/tokens.o bin/tree/tree.o \
	bin/tree/pprint.o bin/tree/modulifier.o
	$(CC) $(CFLAGS) -o $@ $^ $(LLVMLINK)

main: bin/main
	cp $< $@
