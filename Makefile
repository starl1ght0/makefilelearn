TARGET = MyProject 
CC = gcc

SRC = $(wildcard *.c) 
OBJ = $(patsubst *.c, %.o, $(SRC)) 

 $(TARGET) : $(OBJ) 
	$(CC) $(OBJ) -o $(TARGET)

main.o : main.c
	$(CC) -c main.c -o main.o 

my_lib.o : my_lib.c
	$(CC) -c my_lib.c -o my_lib.o

clean :
	rm $(TARGET) *.o


# MyProject : main.o my_lib.o 
# 	gcc main.o my_lib.o -o MyProject 

# main.o : main.c 
# 	gcc -c main.c -o main.o 

# my_lib.o : my_lib.c 
# 	gcc -c my_lib.c -o my_lib.o 

# clean : 
# 	rm MyProject *.o 
