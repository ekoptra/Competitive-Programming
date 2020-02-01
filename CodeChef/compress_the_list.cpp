#include <cstdio>

int main()
{
    int t, n, i, j, k, number[100];
    bool contagious;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        for (j = 0; j < n; j++)
            scanf("%d", &number[j]);
        j = 0;
        while (j < n)
        {
            k = 1;
            while ((j + k < n) && (number[j] == number[j + k] - k))
                k++;
            if (k <= 2)
                printf("%d", number[j]);
            else
            {
                printf("%d...%d", number[j], number[j + k - 1]);
                j += k - 1;
            }
            j++;
            if (j < n)
                printf(",");
            else
                printf("\n");
        }
    }
    return 0;
}
