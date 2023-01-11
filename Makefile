###########################################
#Makefile for simple programs
###########################################

SRC:=./src
BIN:=./bin
OBJ:=./obj

CC:=gcc
CC_FLAG:=-Wall -g -DRTSP_DEBUG -D_GNU_SOURCE -DSAVE_FILE_DEBUG
LD_FLAG:=-lpthread


SOURCES:=$(wildcard $(SRC)/*.c)
OBJS:=$(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(SOURCES))
TARGET:=rtspClient

$(TARGET):$(OBJS)
	$(CC) $(CC_FLAG) -o $(BIN)/$@ $(OBJS) $(LD_FLAG)
	
all:$(OBJS)
$(OBJS):$(OBJ)/%.o:$(SRC)/%.c
	$(CC) $(CC_FLAG) -c $< -o $@

.PRONY:clean
clean:
	@echo "Removing linked and compiled files......"
	rm -f $(OBJ)/*.o $(BIN)/*
