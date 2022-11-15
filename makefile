# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fdagbert <fdagbert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/15 17:34:44 by fdagbert          #+#    #+#              #
#    Updated: 2018/09/20 06:14:23 by fdagbert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
TEST_NAME = test_ftprintf

SRC_PATH = srcs
FUNCTIONS = ft_printf.c			\
			ft_check_flags.c	\
			ft_check_conf.c		\
			ft_set_wild.c		\
			ft_addbuff.c		\
			ft_imtoa_base.c		\
			ft_umtoa_base.c		\
			ft_conv_int.c		\
			ft_fill_int.c		\
			ft_conv_new.c		\
			ft_conv_char.c		\
			ft_conv_utf8.c		\
			ft_conv_string.c	\
			ft_conv_wstr.c		\
			ft_conv_address.c	\
			ft_conv_pct.c		\
			ft_conv_ctrl.c		\
			ft_conv_date.c		\
			ft_format_date.c	\
			ft_conv_fd.c		\
			ft_conv_file.c		\
			ft_conv_crypt.c		\
			ft_text_effects.c
SRC = $(addprefix $(SRC_PATH)/,$(FUNCTIONS))

MAIN_PATH = ../Tests/dev_printf/main
TESTS = 	main.c				\
			test_d.c			\
			test_lD.c			\
			test_i.c			\
			test_u.c			\
			test_lU.c			\
			test_o.c			\
			test_lO.c			\
			test_x.c			\
			test_XUP.c			\
			test_c.c			\
			test_lC.c			\
			test_s.c			\
			test_lS.c			\
			test_p.c			\
			test_pct.c			\
			test_b.c			\
			test_r.c			\
			test_k.c			\
			test_modifier.c		\
			test_opt_bonus.c	\
			test_fd.c			\
			test_rf.c			\
			test_crypt.c		\
			test_local_tests.c
MAIN = $(addprefix $(MAIN_PATH)/,$(TESTS))

OBJ_PATH = objects
OBJ_FUNCT = $(FUNCTIONS:.c=.o)
OBJ_SRC = $(addprefix $(OBJ_PATH)/,$(OBJ_FUNCT))
OBJ_TESTS = $(TESTS:.c=.o)
OBJ_MAIN = $(addprefix $(OBJ_PATH)/main/,$(OBJ_TESTS))

OBJECTS = $(OBJ_SRC)

LIBFT_PATH = libft
LIBFT_NAME = libft.a

INCLUDES = $(LIBFT_PATH)/includes includes
INC_CC = $(foreach DIR,$(INCLUDES),-I$(DIR))

CC = gcc
CFLAGS = -Wall -Wextra

LDFLAGS = -L./
LDLIBS = -lftprintf

.PHONY: all, clean, fclean, re, lib, bin

all: lib $(NAME)

lib:
	make -C $(LIBFT_PATH)

$(NAME): $(OBJECTS)
	cp $(LIBFT_PATH)/$(LIBFT_NAME) $(NAME) 2> /dev/null || true
	ar -rcs $(NAME) $^

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	$(CC) -g $(CFLAGS) $(INC_CC) -o $@ -c $<

clean:
	make -C $(LIBFT_PATH) clean
	rm -fv $(OBJECTS)
	@rm -rf $(OBJ_PATH) 2> /dev/null || true

fclean: clean
	@make -C $(LIBFT_PATH) fclean
	rm -fv $(NAME)
	rm -fv $(TEST_NAME)
	rm -fv $(MAIN_PATH)/test_fd

re: fclean all

bin: all $(OBJ_MAIN)
	$(CC) -g -o $(TEST_NAME) $(OBJ_MAIN) $(INC_CC) $(LDFLAGS) $(LDLIBS)

$(OBJ_PATH)/main/%.o: $(MAIN_PATH)/%.c
	@mkdir $(OBJ_PATH)/main 2> /dev/null || true
	$(CC) -g $(CFLAGS) $(INC_CC) -o $@ -c $<
