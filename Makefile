# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ddo-carm <ddo-carm@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/05 21:51:56 by ddo-carm          #+#    #+#              #
#    Updated: 2024/11/05 21:51:56 by ddo-carm         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CFLAGS = -Wall -Wextra -Werror
HEADERS = ft_printf.h
SRCS_D = .

#source files
SRC = $(SRCS_D)/ft_printf.c \
		$(SRCS_D)/ft_printf_utils.c \
		$(SRCS_D)/ft_hex_utils.c

#object files
OBJ = $(SRC:.c=.o)

all: $(NAME)

#compile the lib
$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@clear
	@echo "$(BGRN)✨compilation completed✨"

#compile .o files
%.o: %.c
	@cc $(CFLAGS) -I $(HEADERS) -c $< -o $@
	@echo "$(BMAG)Compiling..."
	@sleep 0.4
	@clear

#remove .o
clean:
	@rm -f $(OBJ)
	@echo "$(BMAG)✨objects removed $(BGRN)successfully✨"

#clean and remove
fclean: clean
	@rm -f $(NAME)
	@echo "$(BMAG)✨program removed $(BGRN)successfully✨"

#remake
re: fclean all
	@echo "$(BMAG)✨clean and re-compile was $(BGRN)successfull✨"

#help
help:
	@echo "✳$(BMAG) make  $(BWHI) -> $(BMAG)compiles the lib"
	@echo "$(BWHI)✳$(BMAG) clean $(BWHI) -> $(BMAG)removes all objects"
	@echo "$(BWHI)✳$(BMAG) fclean $(BWHI)-> $(BMAG)removes all objects plus the program"
	@echo "$(BWHI)✳$(BMAG) re     $(BWHI)-> $(BMAG)removes all objects plus the program and recompiles the lib"

#Phony targets to avoid clashes
.PHONY: all clean fclean re help

#color list for foreground
#bash -c 'for c in {0..255}; do tput setaf $c; tput setaf $c | cat -v; echo =$c; done'

BLA		= $(shell tput setaf 0)
RED		= $(shell tput setaf 1)
GRN		= $(shell tput setaf 2)
YEL		= $(shell tput setaf 3)
BLU		= $(shell tput setaf 4)
MAG		= $(shell tput setaf 5)
CYA		= $(shell tput setaf 6)
WHI		= $(shell tput setaf 7)
GRE		= $(shell tput setaf 8)
BRED 	= $(shell tput setaf 9)
BGRN	= $(shell tput setaf 10)
BYEL	= $(shell tput setaf 11)
BBLU	= $(shell tput setaf 12)
BMAG	= $(shell tput setaf 13)
BCYA	= $(shell tput setaf 14)
BWHI	= $(shell tput setaf 15)

#color list for background
BLA_BACK	= $(shell tput setab 0)
RED_BACK   	= $(shell tput setab 1)
GRN_BACK	= $(shell tput setab 2)
YEL_BACK	= $(shell tput setab 3)
BLU_BACK	= $(shell tput setab 4)
MAG_BACK	= $(shell tput setab 5)
CYA_BACK	= $(shell tput setab 6)
WHI_BACK	= $(shell tput setab 7)
GRE_BACK	= $(shell tput setab 8)
BRED_BACK	= $(shell tput setab 9)
BGRN_BACK	= $(shell tput setab 10)
BYEL_BACK	= $(shell tput setab 11)
BBLU_BACK	= $(shell tput setab 12)
BMAG_BACK	= $(shell tput setab 13)
BCYA_BACK	= $(shell tput setab 14)
BWHI_BACK	= $(shell tput setab 15)
