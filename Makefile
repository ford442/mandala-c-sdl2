## Makefile for Mandalas
## By Geographer
## Greetz to Epitech Coding Club

CC	= emcc

CFLAGS	+= -O3 -g3 -ffast-math -flto=thin -sAGGRESSIVE_VARIABLE_ELIMINATION=1 -sELIMINATE_DUPLICATE_FUNCTIONS=1 -fno-rtti -fno-exceptions  -s MALLOC="emmalloc" -s USES_DYNAMIC_ALLOC=0 -s SUPPORT_LONGJMP=0 -DNDEBUG -sASSERTIONS=0 -sALLOW_MEMORY_GROWTH=0 -s TOTAL_MEMORY=1400mb -sUSE_SDL=2 -sEXPORTED_FUNCTIONS=["SDL_CreateRenderer", "SDL_CreateWindow", "SDL_RenderClear", "SDL_RenderDrawLine", "SDL_RenderFillRect", "SDL_RenderPresent", "SDL_SetRenderDrawColor"]

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
