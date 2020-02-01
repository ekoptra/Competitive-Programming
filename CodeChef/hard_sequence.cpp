#include <cstdio>

int main()
{
    int sequence[129], t, n, i, j, k, jumlah;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        sequence[1] = 0;
        for (j = 2; j <= n; j++)
        {
            k = j - 2;
            while (k > 0)
                if (sequence[k] == sequence[j - 1])
                    break;
                else
                    k--;
            if (k == 0)
                sequence[j] = 0;
            else
                sequence[j] = j - 1 - k;
        }
        jumlah = 0;
        for (k = 1; k <= n; k++)
            if (sequence[k] == sequence[j - 1])
                jumlah++;
        printf("%d\n", jumlah);
    }
    return 0;
}
