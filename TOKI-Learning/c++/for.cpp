#include <cstdio>

int main()
{
    int n, bi, total;
    scanf("%d", &n);
    total = 0;
    for (int i = 0; i < n; i++)
    {
        scanf("%d", &bi);
        total += bi;
    }
    printf("%d\n", total);
    return 0;
}
