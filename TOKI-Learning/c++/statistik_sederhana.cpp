#include <cstdio>

int main()
{
    int n, bi, max = -100001, min = 100000;
    scanf("%d", &n);
    for (int i = 0; i < n; i++)
    {
        scanf("%d", &bi);
        if (bi < min)
            min = bi;
        if (bi > max)
            max = bi;
    }
    printf("%d %d\n", max, min);
    return 0;
}
