CC=g++
CFLAGS=-I.
DEPS =
OBJ = main.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hello: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
