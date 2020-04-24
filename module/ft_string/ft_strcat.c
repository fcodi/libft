/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcodi <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/11 01:36:58 by fcodi             #+#    #+#             */
/*   Updated: 2019/04/28 03:44:42 by fcodi            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <ft_string.h>

char	*ft_strcat(char *s1, const char *s2)
{
	size_t	length;
	size_t	i;

	length = ft_strlen((const char *)s1);
	i = 0;
	while (s2[i])
	{
		s1[i + length] = s2[i];
		++i;
	}
	s1[i + length] = NUL;
	return (s1);
}
