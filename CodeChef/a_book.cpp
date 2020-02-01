#include <cstdio>

int main()
{
    int a[101], t, n, i, j, tmp, sama, k;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        for (j = 1; j <= n; j++)
            scanf("%d", &a[j]);
        j = 1;
        while (n != 0)
        {
            sama = 0;
            tmp = a[j];
            while (tmp == a[j])
            {
                sama++;
                j++;
            }
            n -= sama;
            for (k = 0; k < sama; k++)
                printf("%d ", n);
        }
        printf("\n");
    }
    return 0;
}
