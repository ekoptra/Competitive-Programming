#include <cstdio>

int main()
{
    int m, n, i, j;
    scanf("%d %d", &m, &n);
    int angka[m][n];
    for (i = 0; i < m; i++)
        for (j = 0; j < n; j++)
            scanf("%d", &angka[i][j]);
    for (i = 0; i < n; i++)
        for (j = m - 1; j >= 0; j--)
            if (j == 0)
                printf("%d\n", angka[j][i]);
            else
                printf("%d ", angka[j][i]);
    return 0;
}
