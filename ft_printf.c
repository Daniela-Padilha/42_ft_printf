/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddo-carm <ddo-carm@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/05 21:52:19 by ddo-carm          #+#    #+#             */
/*   Updated: 2024/11/05 21:52:19 by ddo-carm         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

//info    --> Produce output according to a format
//format  --> Str that specifies how args are converted for output
//return  --> Success (Number of bytes printed, except '\0')

int	ft_printf(const char *format, ...)
{
	va_list	args;
	int		size;
	int		i;

	va_start(args, format);
	size = 0;
	i = 0;
	if (!format)
		return (-1);
	while (format[i])
	{
		if (format[i] == '%' && format[i + 1])
		{
			size += ft_print_args(args, format[i + 1]);
			i++;
		}
		else
			size += ft_print_char(format[i]);
		i++;
	}
	va_end(args);
	return (size);
}

int	ft_print_args(va_list args, char letter)
{
	if (letter == 'c')
		return (ft_print_char(va_arg(args, int)));
	if (letter == 's')
		return (ft_print_str(va_arg(args, char *)));
	if (letter == 'p')
		return (ft_print_ptr(va_arg(args, unsigned long)));
	if (letter == 'd' || letter == 'i')
		return (ft_print_int(va_arg(args, int)));
	if (letter == 'u')
		return (ft_print_unsign(va_arg(args, unsigned int)));
	if (letter == 'x')
		return (ft_print_hex(va_arg(args, unsigned int), 1));
	if (letter == 'X')
		return (ft_print_hex(va_arg(args, unsigned int), 0));
	if (letter == '%')
		return (ft_print_char('%'));
	return (0);
}

// #include <stdio.h>
// int	main(void)
// {
// 	char 			c = 'a';
// 	char			*str = "Hello";
// 	void			*ptr = NULL;
// 	int				i = -123;
// 	unsigned int	ui = 123;

// 	ft_printf("	--Ft_Printf--\n");
// 	ft_printf("Without placeholders\n");
// 	ft_printf("Char: %c\n", c);
// 	ft_printf("Str: %s\n", str);
// 	ft_printf("Ptr: %p\n", ptr);
// 	ft_printf("Decimal: %d\n", i);
// 	ft_printf("Int: %i\n", i);
// 	ft_printf("Unsigned: %u\n", ui);
// 	ft_printf("hex: %x\n", ui);
// 	ft_printf("HEX: %X\n", ui);
// 	ft_printf("Percent: %%\n\n");
// 	printf("	--Printf--\n");
// 	printf("Without placeholders\n");
// 	printf("Char: %c\n", c);
// 	printf("Str: %s\n", str);
// 	printf("Ptr: %p\n", ptr);
// 	printf("Decimal: %d\n", i);
// 	printf("Int: %i\n", i);
// 	printf("Unsigned: %u\n", ui);
// 	printf("hex: %x\n", ui);
// 	printf("HEX: %X\n", ui);
// 	printf("Percent: %%\n");
// 	return (0);
// }
