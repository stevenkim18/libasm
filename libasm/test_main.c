#include <stdio.h>

int     ft_strlen(char *s);
char    *ft_strcpy(char *dest, char *src);

int     main(void)
{
        printf("Hello World %d\n", ft_strlen("HelloWorld"));
        printf("\"\"%d\n\n", ft_strlen(""));

        char    dest[10];
        printf("%s\n", ft_strcpy(dest, "Hello"));
}