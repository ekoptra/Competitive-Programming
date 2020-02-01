#include <cstdio>

char toHurufKecil(char a)
{
    if (a >= 'a' && a <= 'z')
        return a;
    else
        return 'a' + a - 'A';
}

int main()
{
    char s[101], t[101];
    scanf("%s", s);
    scanf("%s", t);
    int i = 0;
    while (s[i] != '\0')
    {
        if (toHurufKecil(s[i]) != toHurufKecil(t[i]))
            break;
        i++;
    }
    if (s[i] == '\0')
        printf("20/20\n");
    else
        printf("x_x\n");
    return 0;
}
