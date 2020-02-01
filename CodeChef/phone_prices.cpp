#include <cstdio>

int main()
{
    int t, n, p[101];
    scanf("%d", &t);
    for (int i = 0; i < t; i++)
    {
        scanf("%d", &n);
        int jumlah = 0;
        for (int j = 0; j < n; j++)
        {
            scanf("%d", &p[j]);
            int hitung = 1;
            int ada = 0;
            while ((hitung <= 5) && (j - hitung >= 0))
            {
                if (p[j - hitung] <= p[j])
                    ada = 1;
                hitung++;
            }
            if (ada == 0)
                jumlah++;
        }
        printf("%d\n", jumlah);
    }
    return 0;
}
