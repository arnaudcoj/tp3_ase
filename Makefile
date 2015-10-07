CC=gcc
CFLAGS=-m32

all:pingpong pingpongpang

pingpong: switch.o pingpong.c  
	$(CC) $(CFLAGS) -o $@  $^

pingpongpang: switch.o pingpongpang.c  
	$(CC) $(CFLAGS) -o $@  $^

%.o: %.c
	$(CC) $(CFLAGS) -c $^

clean:
	rm -rf *~ *.o pingpong pingpongpang
