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

         ________________________________________________
________|                                               |_______
\       |                 NAMES & PATHS                 |      /
 \      |                                               |     /
 /      |_______________________________________________|     \
/__________)                                        (__________\


NAME = libftprintf.a
TEST_NAME = printf_test.a
SRCS_D = .
HEADERS = .

#source files
SRC = $(SRCS_D)/ft_printf.c \
		$(SRCS_D)/ft_printf_utils.c \
		$(SRCS_D)/ft_hex_utils.c

MAIN = $(SRCS_D)/main.c

#object files
OBJ = $(SRC:.c=.o)
OBJ_MAIN = $(MAIN:.c=.o)

         ________________________________________________
________|                                               |_______
\       |                FLAGS & COMMANDS               |      /
 \      |                                               |     /
 /      |_______________________________________________|     \
/__________)                                        (__________\

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f
AR = ar rcs

         ________________________________________________
________|                                               |_______
\       |                    LIB RULES                  |      /
 \      |                                               |     /
 /      |_______________________________________________|     \
/__________)                                        (__________\


all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)
	@clear
	@echo "$(BGRN)✨compilation completed✨"

%.o: %.c
	@$(CC) $(CFLAGS) -I $(HEADERS) -c $< -o $@
	@echo "$(BMAG)Compiling..."
	@sleep 0.4
	@clear

         ________________________________________________
________|                                               |_______
\       |                   TEST RULES                  |      /
 \      |                                               |     /
 /      |_______________________________________________|     \
/__________)                                        (__________\

#TESTING
test: all
	@$(CC) $(CFLAGS) $(MAIN) $(SRC) -o $(TEST_NAME)
	@clear
	@echo "$(BGRN)$(TEST_NAME) created successfully"
	@./$(TEST_NAME)
	@echo "$(BGRN)✨test completed✨"

cleantest:
	@$(RM) $(OBJ_MAIN) $(TEST_NAME)
	@echo "$(BMAG)✨$(TEST_NAME) was removed✨"

retest: cleantest test
	@echo "$(BMAG)✨retest was $(BGRN)successfull✨"


         ________________________________________________
________|                                               |_______
\       |                  CLEAN RULES                  |      /
 \      |                                               |     /
 /      |_______________________________________________|     \
/__________)                                        (__________\

#remove .o
clean:
	@$(RM) $(OBJ)
	@echo "$(BMAG)✨objects removed $(BGRN)successfully✨"

#clean and remove
fclean: clean cleantest
	@$(RM) $(NAME)
	@echo "$(BMAG)✨program removed $(BGRN)successfully✨"

#remake
re: fclean all
	@echo "$(BMAG)✨re-compile was $(BGRN)successfull✨"

         ________________________________________________
________|                                               |_______
\       |                  HELP RULES                   |      /
 \      |                                               |     /
 /      |_______________________________________________|     \
/__________)                                        (__________\

#help
help:
	@echo "✳$(BMAG) make  $(BWHI)    -> $(BMAG)compiles the lib"
	@echo "$(BWHI)✳$(BMAG) test      $(BWHI)-> $(BMAG)compiles the lib with the main"
	@echo "$(BWHI)✳$(BMAG) clean    $(BWHI) -> $(BMAG)removes all objects"
	@echo "$(BWHI)✳$(BMAG) fclean    $(BWHI)-> $(BMAG)removes all objects plus the program"
	@echo "$(BWHI)✳$(BMAG) re        $(BWHI)-> $(BMAG)removes all objects plus the program and recompiles the lib"
	@echo "$(BWHI)✳$(BMAG) cleantest $(BWHI)-> $(BMAG)removes all test files"
	@echo "$(BWHI)✳$(BMAG) retest    $(BWHI)-> $(BMAG)removes test files and recompiles"

#Phony targets to avoid clashes
.PHONY: all clean fclean re help test cleantest retest

         ________________________________________________
________|                                               |_______
\       |                    COLORS                     |      /
 \      |                                               |     /
 /      |_______________________________________________|     \
/__________)                                        (__________\

#color list for foreground
#bash -c 'for c in {0..255}; do tput setaf $c; tput setaf $c | cat -v; echo =$c; done'

BLA		:= $(shell echo "u001b[30m")
RED		:= $(shell echo "\u001b[31m")
GRN		:= $(shell echo "\u001b[32m")
YEL		:= $(shell echo "\u001b[33m")
BLU		:= $(shell echo "\u001b[34m")
MAG		:= $(shell echo "\u001b[35m")
CYA		:= $(shell echo "\u001b[36m")
WHI		:= $(shell echo "\u001b[37m")
GRE		:= $(shell echo "\u001b[0m")
BBLA	:= $(shell echo "\u001b[30;1m")
BRED 	:= $(shell echo "\u001b[31;1m")
BGRN	:= $(shell echo "\u001b[32;1m")
BYEL	:= $(shell echo "\u001b[33;1m")
BBLU	:= $(shell echo "\u001b[34;1m")
BMAG	:= $(shell echo "\u001b[35;1m")
BCYA	:= $(shell echo "\u001b[36;1m")
BWHI	:= $(shell echo "\u001b[37;1m")
Reset	:= $(shell echo "\u001b[0m")
