NAME = libasm.a

NASM = nasm
FLAGS = -f macho64

FILES = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJS = $(FILES:.s=.o)

%.o: %.s
		$(NASM) $(FLAGS) $<

all: $(NAME)

$(NAME): $(OBJS)
		ar rc $(NAME) $(OBJS)

clean:
		rm -rf *.o

fclean: clean
		rm $(NAME)

re: fclean all