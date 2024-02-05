CC = gcc
CFLAGS = -Iinc
DEPS = $(wildcard inc/*.h)
SRC_OBJ = $(patsubst src/%.c, build/%.o, $(wildcard src/*.c))
INC_OBJ = $(patsubst inc/%.c, build/%.o, $(wildcard inc/*.c))
TESTS = $(patsubst test/%.c, build/%.o, $(wildcard test/*.c))

build/%.o: src/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

build/%.o: inc/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

build/%.o: test/%.c $(DEPS)
	$(CC) -DTEST -c -o $@ $< $(CFLAGS)

build/main: $(SRC_OBJ) $(INC_OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: tests
tests:  $(INC_OBJ) $(TESTS)
	$(CC) -o build/tests $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -f build/*.o build/main build/tests
