#include <cstdio>
#include <cmath>

int main()
{
    int n, faktor, i, j, bi;
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        faktor = 2;
        scanf("%d", &bi);
        for (j = 2; j <= trunc(sqrt(bi)); j++)
        {
            if (bi % j == 0)
                faktor += 2;
            if (faktor > 4)
                break;
        }
        if (faktor <= 4)
            printf("YA\n");
        else
            printf("BUKAN\n");
    }
    return 0;
}
