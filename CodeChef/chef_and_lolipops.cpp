#include <cstdio>

int main()
{
    int t, n, tmp, i, j;
    unsigned long long hasil;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        hasil = 0;
        for (j = 0; j < n; j++)
        {
            scanf("%d", &tmp);
            if (tmp > 0)
                hasil += tmp;
        }
        printf("%d\n", hasil);
    }
    return 0;
}
