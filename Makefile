CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = ft_isalpha.c ft_isprint.c ft_strchr.c ft_strrchr.c ft_isascii.c ft_memchr.c ft_strlen.c ft_tolower.c ft_isalnum.c ft_isdigit.c ft_memset.c ft_strncmp.c ft_toupper.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_memcmp.c ft_atoi.c ft_strnstr.c ft_strlcat.c ft_strlcpy.c ft_strdup.c ft_calloc.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
OBJ = $(SRC:.c=.o)
NAME = libft.a

all: $(NAME)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ -I ./

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re