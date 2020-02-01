#include <cstdio>

int main()
{
    int bi, total;
    total = 0;
    while (scanf("%d", &bi) != EOF)
        total += bi;
    printf("%d\n", total);
    return 0;
}
