#include <cstdio>

int reverse(int x)
{
    int balik = 0;
    while (x > 0)
    {
        balik = (balik * 10) + (x % 10);
        x /= 10;
    }
    return balik;
}

int main()
{
    int a, b;
    scanf("%d %d", &a, &b);
    printf("%d\n", reverse(reverse(a) + reverse(b)));
    return 0;
}
