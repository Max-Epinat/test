CC = gcc
CFLAGS = -Wall -Wextra -Werror
NAME = myprogram
SRC = main.c
OBJ = $(SRC:.c=.o)
TEST_SRC = tests/test_main.c
TEST_NAME = unit_tests

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC)	-o	$(NAME)	$(OBJ)

clean:
	rm	-f	$(OBJ)
	rm	-f	$(TEST_NAME)

fclean:	clean
	rm	-f	$(NAME)

re:	fclean	all

tests_run:
	$(CC)	$(TEST_SRC)	-o	$(TEST_NAME)	-lcriterion
	./$(TEST_NAME)

.PHONY:	all	clean	fclean	re	tests_run
