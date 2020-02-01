#include <cstdio>

int main()
{
    unsigned long long k, t, i, j, a, b, angka[10000], angkatmp[10000], n, hasilBagi, sisaBagi, perubahan, tengah, tmp;
    scanf("%llu", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%llu %llu", &n, &k);
        for (j = 0; j < n; j++)
            scanf("%llu", &angka[j]);

        j = 0;
        if (k <= n)
        {
            while (j < k)
            {
                a = j % n;
                b = n - a - 1;
                a = angka[a];
                b = angka[b];
                angka[j % n] = a ^ b;
                j++;
            }
        }
        else
        {
            hasilBagi = (k / n);
            sisaBagi = k % n;
            tengah = (n / 2) - 1;
            if (n % 2 != 0)
                tengah++;
            while (j < n)
            {
                a = j % n;
                b = n - a - 1;
                a = angka[a];
                b = angka[b];
                perubahan = hasilBagi;
                if (j < sisaBagi)
                    perubahan++;
                if (j <= tengah)
                {
                    angkatmp[j % n] = angka[j % n];
                    if (perubahan % 3 == 1)
                        angka[j % n] = a ^ b;
                    else if (perubahan % 3 == 2)
                    {
                        tmp = a ^ b;
                        angka[j % n] = tmp ^ a;
                    }
                }
                else
                {
                    b = angkatmp[n - (j % n) - 1];
                    if (perubahan % 3 == 1)
                        angka[j % n] = b;
                    else if (perubahan % 3 == 2)
                        angka[j % n] = a ^ b;
                }
                j++;
            }
            if (n % 2 != 0)
                angka[tengah] = 0;
        }
        for (j = 0; j < n - 1; j++)
            printf("%llu ", angka[j]);
        printf("%llu\n", angka[j]);
    }
    return 0;
}
