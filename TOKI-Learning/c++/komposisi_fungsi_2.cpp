#include <cstdio>

int a, b;

int fungsi(int x)
{
    if (a * x + b >= 0)
        return a * x + b;
    else
        return (-1) * (a * x + b);
}

int kedalaman(int k, int x)
{
    if (k == 1)
        return fungsi(x);
    else
        return kedalaman(k - 1, fungsi(x));
}

int main()
{
    int k, x;
    scanf("%d %d %d %d", &a, &b, &k, &x);
    printf("%d\n", kedalaman(k, x));
    return 0;
}
