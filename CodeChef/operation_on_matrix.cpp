#include <cstdio>

int main()
{
    unsigned long long i, j, k, t, n, m, q, r, c, baris[100000], kolom[100000], genapBaris, genapKolom;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d %d %d", &n, &m, &q);
        for (j = 0; j < n; j++)
            baris[j] = 0;
        for (j = 0; j < m; j++)
            kolom[j] = 0;
        for (j = 0; j < q; j++)
        {
            scanf("%d %d", &r, &c);
            baris[r - 1]++;
            kolom[c - 1]++;
        }
        genapBaris = 0;
        genapKolom = 0;
        for (j = 0; j < n; j++)
            if (baris[j] % 2 == 0)
                genapBaris++;
        for (j = 0; j < m; j++)
            if (kolom[j] % 2 == 0)
                genapKolom++;
        printf("%llu\n", (n * m) - (genapKolom * genapBaris) - ((n - genapBaris) * (m - genapKolom)));
    }
    return 0;
}
