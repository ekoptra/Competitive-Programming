#include <cstdio>

int main()
{
    int n;
    scanf("%d", &n);
    for (int i = n - 1; i >= 0; i--)
    {
        int j;
        for (j = 1; j <= i; j++)
            printf(" ");
        for (j = 1; j <= n - i; j++)
            printf("*");
        printf("\n");
    }
    return 0;
}
