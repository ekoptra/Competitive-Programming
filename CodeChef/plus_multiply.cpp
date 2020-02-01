#include <cstdio>

int main()
{
    int t, n, jumlah0, jumlah2, tmp, i, j;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        jumlah2 = jumlah0 = 0;
        for (j = 0; j < n; j++)
        {
            scanf("%d", &tmp);
            if (tmp == 0)
                jumlah0++;
            if (tmp == 2)
                jumlah2++;
        }
        if (jumlah0 > 1)
            jumlah0 = (jumlah0 * (jumlah0 - 1)) / 2;
        else
            jumlah0 = 0;
        if (jumlah2 > 1)
            jumlah2 = (jumlah2 * (jumlah2 - 1)) / 2;
        else
            jumlah2 = 0;
        printf("%d\n", jumlah0 + jumlah2);
    }
    return 0;
}
