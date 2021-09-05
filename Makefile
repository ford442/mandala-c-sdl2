## Makefile for Mandalas
## By Geographer
## Greetz to Epitech Coding Club

CC	= emcc

CFLAGS	+= -W -Werror -Wall -Wextra -pedantic
CFLAGS	+= -O3 -g3 -ffast-math -flto=thin  -sELIMINATE_DUPLICATE_FUNCTIONS=1 -fno-rtti -fno-exceptions  -s MALLOC="emmalloc" -s USES_DYNAMIC_ALLOC=0 -s SUPPORT_LONGJMP=0 -DNDEBUG -sASSERTIONS=0 -sALLOW_MEMORY_GROWTH=0 -s TOTAL_MEMORY=1400mb -sUSE_SDL=2 

LDFLAGS	+= -lm

SRCS	= mandala.c

OBJS	= $(SRCS:.c=.o)

RM	= rm -f

NAME	= mandala

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME).js $(LDFLAGS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
