# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aleduc <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/13 16:40:19 by aleduc            #+#    #+#              #
#    Updated: 2017/11/22 15:11:05 by aleduc           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memset.c \
	  ft_memmove.c ft_strcat.c ft_strchr.c ft_strcpy.c ft_strdup.c ft_strlcat.c \
	  ft_strlen.c ft_strncat.c ft_strncpy.c ft_atoi.c ft_isalnum.c ft_isalpha.c \
	  ft_isascii.c ft_isdigit.c ft_isprint.c ft_strnstr.c ft_strstr.c ft_strrchr.c \
	  ft_tolower.c ft_toupper.c ft_strcmp.c ft_strncmp.c ft_memalloc.c ft_strnew.c \
	  ft_memdel.c ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c \
	  ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_putchar.c \
	  ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c \
	  ft_putendl_fd.c ft_putnbr_fd.c ft_strtrim.c ft_strsplit.c ft_itoa.c ft_lstnew.c \
	  ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_isspace.c \
	  ft_strrev.c ft_swap.c ft_sort_integer_table.c ft_lsttail.c

ONAME = $(SRCS:.c=.o)

NAME = libft.a

all : $(NAME)

$(NAME) :
		gcc -Wall -Wextra -Werror -c $(SRCS)
		ar rc $(NAME) $(ONAME)
		ranlib $(NAME)

clean :
		rm -f $(ONAME)

fclean : clean
		rm -rf $(NAME)

re : fclean all
