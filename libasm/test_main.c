#include <stdio.h>
#include <string.h>

int     ft_strlen(char *s);

int     main(void)
{
        printf("Hello World %d\n", ft_strlen("HelloWorld"));
        printf("\"\"%d\n", ft_strlen(""));
}