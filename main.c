#include "ft_printf.h"
#include <stdio.h>
int	main(void)
{
	char 			c = 'a';
	char			*str = NULL;
	void			*ptr = NULL;
	int				i = -123;
	unsigned int	ui = 123;

	ft_printf("	--Ft_Printf--\n");
	ft_printf("Without placeholders\n");
	ft_printf("Char: %c\n", c);
	ft_printf("Str: %s\n", str);
	ft_printf("Ptr: %p\n", ptr);
	ft_printf("Decimal: %d\n", i);
	ft_printf("Int: %i\n", i);
	ft_printf("Unsigned: %u\n", ui);
	ft_printf("hex: %x\n", ui);
	ft_printf("HEX: %X\n", ui);
	ft_printf("Percent: %%\n\n");
	printf("	--Printf--\n");
	printf("Without placeholders\n");
	printf("Char: %c\n", c);
	printf("Str: %s\n", str);
	printf("Ptr: %p\n", ptr);
	printf("Decimal: %d\n", i);
	printf("Int: %i\n", i);
	printf("Unsigned: %u\n", ui);
	printf("hex: %x\n", ui);
	printf("HEX: %X\n", ui);
	printf("Percent: %%\n");
	return (0);
}