#include <cstdio>

int main()
{
    int n;
    scanf("%d", &n);
    for (int i = 1; i <= n; i++)
    {
        if (i % 10 == 0)
            continue;
        if (i == 42)
        {
            printf("ERROR\n");
            break;
        }
        printf("%d\n", i);
    }
    return 0;
}
