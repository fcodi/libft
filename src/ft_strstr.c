/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fcodi <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/11 19:06:31 by fcodi             #+#    #+#             */
/*   Updated: 2020/11/20 00:19:55 by fcodi            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

char	*ft_strstr(const char *haystack, const char *needle)
{
	int		size1;
	int		size2;
	int		i;
	int		j;

	if (*needle == NUL)
		return ((char *)haystack);
	size1 = (int)ft_strlen(haystack);
	size2 = (int)ft_strlen(needle);
	i = -1;
	while (++i <= (size1 - size2))
	{
		j = 0;
		while (j < size2 && haystack[i + j] == needle[j])
			j++;
		if (j == size2)
			return ((char *)(haystack + i));
	}
	return (NULL);
}
