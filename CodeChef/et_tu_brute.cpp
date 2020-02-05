#include <cstdio>

int main()
{
    int t, length, tmp;
    char a[100001];
    scanf("%d", &t);
    for (int i = 0; i < t; i++)
    {
        scanf("%s", a);
        length = 0;
        while (a[length] != '\0')
            length++;
        for (int j = 0; j < length; j++)
        {
            tmp = a[j] - 'a';
            tmp += length;
            tmp %= 'z' - 'a' + 1;
            a[j] = 'a' + tmp;
        }
        printf("%s\n", a);
    }
    return 0;
}
