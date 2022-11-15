# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fdagbert <fdagbert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/15 17:34:44 by fdagbert          #+#    #+#              #
#    Updated: 2018/07/18 00:01:13 by fdagbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRC = ./
FUNCTIONS = $(SRC)ft_bzero.c			\
			$(SRC)ft_memset.c			\
			$(SRC)ft_memmove.c			\
			$(SRC)ft_strlen.c			\
			$(SRC)ft_wcslen.c			\
			$(SRC)ft_islower.c			\
			$(SRC)ft_isdigit.c			\
			$(SRC)ft_toupper.c			\
			$(SRC)ft_strupcase.c		\
			$(SRC)ft_strncat.c			\
			$(SRC)ft_strnew.c			\
			$(SRC)ft_strchr.c			\
			$(SRC)ft_atoi.c
OBJECTS = $(FUNCTIONS:.c=.o)
FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME):
	gcc $(FLAGS) -I./includes -c $(FUNCTIONS) -g
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all
