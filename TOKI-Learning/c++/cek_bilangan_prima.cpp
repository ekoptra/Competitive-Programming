#include <cstdio>
#include <cmath>

int main()
{
    int n, bi;
    scanf("%d", &n);
    for (int i = 0; i < n; i++)
    {
        int j = 0;
        int prima = 1;
        scanf("%d", &bi);
        for (j = 2; j <= trunc(sqrt(bi)); j++)
            if (bi % j == 0)
            {
                prima = 0;
                break;
            }
        if (bi == 1)
            printf("BUKAN\n");
        else if (prima == 1)
            printf("YA\n");
        else
            printf("BUKAN\n");
    }
    return 0;
}
