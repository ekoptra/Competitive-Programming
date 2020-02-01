#include <cstdio>

int main()
{
    int t, n, i, j;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        j = 500;
        while (n > 0)
        {
            printf("%d ", j);
            j--;
            n--;
        }
        printf("\n");
    }
    return 0;
}
