CC	= gcc
CFLAGS	= -I.
DEPS	= hello.h
OBJ	= hello.o \
	  hello_fun.o
RM	= rm -f
BIN	= hello

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(BIN): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	$(RM) $(BIN)
