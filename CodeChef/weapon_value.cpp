#include <cstdio>

int main()
{
    int t, n, jumlah, weapon[10], k, i, j;
    char tmp[11];
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        for (j = 0; j < 10; j++)
            weapon[j] = 0;
        for (j = 0; j < n; j++)
        {
            scanf("%s", tmp);
            k = 0;
            while (tmp[k] != '\0')
            {
                if (tmp[k] == '1')
                    weapon[k]++;
                k++;
            }
        }
        jumlah = 0;
        for (j = 0; j < 10; j++)
            if (weapon[j] % 2 == 1)
                jumlah++;
        printf("%d\n", jumlah);
    }
    return 0;
}
