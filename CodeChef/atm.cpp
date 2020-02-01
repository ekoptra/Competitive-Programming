#include <cstdio>

int main()
{
    int x;
    double y;
    scanf("%d %lf", &x, &y);
    if ((x % 5 != 0) || (y - x - 0.5) > 0)
        printf("%0.2lf\n", y);
    else
        printf("%0.2lf\n", y - x - 0.5);
    return 0;
}
