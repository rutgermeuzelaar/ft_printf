/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_print_character.c                               :+:    :+:            */
/*                                                     +:+                    */
/*   By: rmeuzela <rmeuzela@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/11/09 14:39:04 by rmeuzela      #+#    #+#                 */
/*   Updated: 2023/11/23 12:27:51 by rmeuzela      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_print_character(char character)
{
	ft_putchar_fd(character, 1);
	return (1);
}
