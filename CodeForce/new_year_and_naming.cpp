#include <cstdio>

int main()
{
    int n, m, q, tahun, tmp, i, j;
    char s[20][11], t[20][11];
    scanf("%d %d", &n, &m);
    for (i = 0; i < n; i++)
        scanf("%s", &s[i]);
    for (i = 0; i < m; i++)
        scanf("%s", &t[i]);
    scanf("%d", &q);
    for (i = 0; i < q; i++)
    {
        scanf("%d", &tahun);
        tmp = (tahun % n) - 1;
        if (tmp < 0)
            tmp = n - 1;
        j = 0;
        while (s[tmp][j] != '\0')
        {
            printf("%c", s[tmp][j]);
            j++;
        }
        tmp = (tahun % m) - 1;
        if (tmp < 0)
            tmp = m - 1;
        j = 0;
        while (t[tmp][j] != '\0')
        {
            printf("%c", t[tmp][j]);
            j++;
        }
        printf("\n");
    }
    return 0;
}
