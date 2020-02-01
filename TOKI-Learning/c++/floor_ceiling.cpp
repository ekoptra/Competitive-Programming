#include <cstdio>
#include <cmath>

int main()
{
    float n;
    scanf("%f", &n);
    if (n == trunc(n))
        printf("%0.0f %0.0f\n", trunc(n), trunc(n));
    else if (n < 0)
        printf("%0.0f %0.0f\n", trunc(n) - 1, trunc(n));
    else
        printf("%0.0f %0.0f\n", trunc(n), trunc(n) + 1);

    return 0;
}
