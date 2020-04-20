/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcodi <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/11 01:36:58 by fcodi             #+#    #+#             */
/*   Updated: 2019/10/08 19:59:27 by fcodi            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

char	*ft_strcat(char *s1, const char *s2)
{
	size_t	length;
	size_t	i;

	length = ft_strlen((const char *)s1);
	i = 0;
	while (s1 && s2 && s2[i])
	{
		s1[i + length] = s2[i];
		++i;
	}
	s1 ? s1[i + length] = NUL : FALSE;
	return (s1);
}