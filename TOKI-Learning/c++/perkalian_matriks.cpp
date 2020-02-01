#include <cstdio>

int main()
{
    int n, m, p, i, j, k, hasil;
    scanf("%d %d %d", &n, &m, &p);
    int matriks1[n][m], matriks2[m][p];
    for (i = 0; i < n; i++)
        for (j = 0; j < m; j++)
            scanf("%d", &matriks1[i][j]);
    for (i = 0; i < m; i++)
        for (j = 0; j < p; j++)
            scanf("%d", &matriks2[i][j]);
    for (i = 0; i < n; i++)
    {
        for (j = 0; j < p; j++)
        {
            hasil = 0;
            for (k = 0; k < m; k++)
            {
                hasil += matriks1[i][k] * matriks2[k][j];
            }
            if (j == p - 1)
                printf("%d\n", hasil);
            else
                printf("%d ", hasil);
        }
    }
    return 0;
}
