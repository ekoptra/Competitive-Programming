#include <cstdio>

int main()
{
    int x1, x2, y1, y2, a, b;
    scanf("%d %d %d %d", &x1, &y1, &x2, &y2);
    a = x1 - x2;
    b = y1 - y2;
    if (a < 0)
        if (b < 0)
            printf("%d\n", -a - b);
        else
            printf("%d\n", -a + b);
    else if (b < 0)
        printf("%d\n", a - b);
    else
        printf("%d\n", a + b);
    return 0;
}
