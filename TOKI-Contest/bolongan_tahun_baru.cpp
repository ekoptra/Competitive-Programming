#include <cstdio>

int main()
{
    int n;
    scanf("%d", &n);
    if (n == 0)
    {
        printf("1\n");
        return 0;
    }
    if (n == 1)
    {
        printf("0\n");
        return 0;
    }
    else if (n % 2 != 0)
    {
        printf("4");
    }
    for (int i = 1; i <= n / 2; i++)
        printf("8");
    printf("\n");
    return 0;
}
