CC = cc
CFLAGS = -Wall -Wextra -Werror
SRCDIR = src
OBJDIR = build
SOURCE = ft_printf.c ft_print_character.c ft_print_string.c \
ft_print_void_pointer.c ft_print_integer.c ft_ultoa_base.c \
ft_print_unsigned_decimal.c ft_print_hexadecimal_lower.c \
ft_print_hexadecimal_upper.c
OBJECTS = $(SOURCE:%.c=$(OBJDIR)/%.o)

.PHONY: all clean fclean re

all: $(OBJECTS)

$(OBJECTS): $(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJDIR):
	mkdir $(OBJDIR)

clean:
	rm -r -f $(OBJECTS)

fclean: clean

re: fclean all