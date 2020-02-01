#include <cstdio>

int main()
{
    int t, n, m, kucing[101], urutan[1001], j;
    scanf("%d", &t);
    for (int i = 0; i < t; i++)
    {
        bool adil = true;
        scanf("%d %d", &n, &m);
        for (j = 1; j <= n; j++)
            kucing[j] = 0;
        for (j = 1; j <= m; j++)
            scanf("%d", &urutan[j]);
        int makanKe = 1;
        int count = 1;
        for (j = 1; j <= m; j++)
        {
            if (kucing[urutan[j]] == makanKe - 1)
            {
                kucing[urutan[j]]++;
            }
            else
            {
                adil = false;
                break;
            }
            if (count == n)
            {
                makanKe++;
                count = 0;
            }
            count++;
        }
        if (adil)
            printf("YES\n");
        else
            printf("NO\n");
    }
    return 0;
}
