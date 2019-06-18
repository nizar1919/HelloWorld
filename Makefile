CC=g++
CFLAGS=-I.
DEPS =
OBJ = main.o

%.o: %.c $(DEPS)
        $(CC) -c -o $@ $< $(CFLAGS)

hello: $(OBJ)
        $(CC) -o $@ $^ $(CFLAGS)
