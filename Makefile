# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: muraler <muraler@student.42.tr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/23 10:03:03 by muraler           #+#    #+#              #
#    Updated: 2022/02/23 10:04:45 by muraler          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAG = -Wall -Wextra -Werror
OPTION = -c
SRC = $(shell find . ! -name "ft_lst*.c" -name "ft_*.c")
BONUS = *.c

all: $(NAME)

$(NAME):
	gcc $(FLAG) $(OPTION) $(SRC)
	ar rc $(NAME) *.o
bonus:
	gcc $(FLAG) $(OPTION) $(BONUS)
	ar rc $(NAME) *.o

clean:
	rm -f  *.o
fclean: clean
	rm -f $(NAME)

re: fclean all
