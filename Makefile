## Makefile for Mandalas
## By Geographer
## Greetz to Epitech Coding Club

CC	= emcc

CFLAGS += -O3 -g3 -ffast-math -flto=thin -sAGGRESSIVE_VARIABLE_ELIMINATION=1 -sELIMINATE_DUPLICATE_FUNCTIONS=1 -fno-rtti -fno-exceptions  -s MALLOC="emmalloc" -s USES_DYNAMIC_ALLOC=0 -s SUPPORT_LONGJMP=0 -DNDEBUG -sASSERTIONS=0 -sALLOW_MEMORY_GROWTH=0 -s TOTAL_MEMORY=1400mb -sUSE_SDL=2 -sEXPORTED_FUNCTIONS=["_SDL_CreateRenderer", "_SDL_CreateWindow", "_SDL_RenderClear", "_SDL_RenderDrawLine", "_SDL_RenderFillRect", "_SDL_RenderPresent", "_SDL_SetRenderDrawColor","_main"] -sEXPORTED_RUNTIME_METHODS=ccall

LDFLAGS	+= -lm

SRCS	= mandala.c

OBJS	= $(SRCS:.c=.o)

RM	= rm -f

NAME	= mandala.js

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME) $(LDFLAGS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
