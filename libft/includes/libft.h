/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fdagbert <fdagbert@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/13 19:12:03 by fdagbert          #+#    #+#             */
/*   Updated: 2018/07/18 00:02:00 by fdagbert         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <string.h>
# include <stdlib.h>
# include <unistd.h>

typedef unsigned char	t_byte;

void					ft_bzero(void *s, size_t n);
void					*ft_memset(void *s, int c, size_t n);
void					*ft_memmove(void *dest, const void *src, size_t n);
size_t					ft_strlen(const char *s);
size_t					ft_wcslen(const wchar_t *s);
int						ft_islower(int c);
int						ft_isdigit(int c);
int						ft_toupper(int c);
int						ft_atoi(const char *str);
char					*ft_strupcase(char *str);
char					*ft_strncat(char *dest, const char *src, size_t n);
char					*ft_strnew(size_t size);
char					*ft_strchr(const char *s, int c);

#endif
