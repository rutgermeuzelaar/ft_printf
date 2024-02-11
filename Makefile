CC = cc
CFLAGS = -Wall -Wextra -Werror
SOURCE = ft_printf.c ft_print_character.c ft_print_string.c ft_print_void_pointer.c ft_print_integer.c \
ft_ultoa_base.c ft_print_unsigned_decimal.c ft_print_hexadecimal_lower.c ft_print_hexadecimal_upper.c
OBJECTS = $(SOURCE:.c=.o)
NAME = libftprintf.a

.PHONY: all clean fclean re

all: $(NAME)

$(OBJECTS): %.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(NAME): $(OBJECTS)
	$(MAKE) -C libft/
	cp libft/libft.a $(NAME)
	ar -rcs $(NAME) $(OBJECTS)

compile:
	cc -g $(compile_target) -L. -lftprintf -L libft/ -lft

clean:
	rm -r -f $(OBJECTS)

fclean: clean
	rm -r -f $(NAME)

re: fclean all