#include <cstdio>

int komposisi(int a, int x, int b)
{
    int hasil = (a * x) + b;
    if (hasil >= 0)
        return hasil;
    else
        return (-1) * hasil;
}

int main()
{
    int a, b, k, x, hasil;
    scanf("%d %d %d %d", &a, &b, &k, &x);
    hasil = x;
    for (int i = 0; i < k; i++)
        hasil = komposisi(a, hasil, b);
    printf("%d\n", hasil);
    return 0;
}
