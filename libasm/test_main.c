#include <stdio.h>

// int     ft_strlen(char *s);
// char    *ft_strcpy(char *dest, char *src);
// int     ft_strcmp(char *s1, char *s2);
// ssize_t ft_write(int fd, const void *buff, size_t n);
char    *ft_strdup(char *str);

int     main(void)
{
        // printf("Hello World %d\n", ft_strlen("HelloWorld"));
        // printf("\"\"%d\n\n", ft_strlen(""));
// 
        // char    dest[10];
        // printf("%s\n\n", ft_strcpy(dest, "Hello"));
// 
        // printf("a ''%d\n", ft_strcmp("a", ""));
        // printf("'' a%d\n", ft_strcmp("", "a"));
        // printf("abc abc%d\n\n", ft_strcmp("abc", "abc"));

        // ft_write(1, "write\n", 6);
        char *str = "Hello World\n";
        char *ptr;
         
        printf("%p\n", str);
        ptr = ft_strdup(str);
        printf("%p\n", ptr);
        printf("%s\n", ptr);
}