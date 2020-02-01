#include <cstdio>

int main()
{
    int n, angka[1001], i, bi, modus = 0;
    for (i = 0; i <= 1000; i++)
        angka[i] = 0;
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        scanf("%d", &bi);
        angka[bi]++;
    }
    for (i = 0; i <= 1000; i++)
    {
        if (angka[i] >= angka[modus])
            modus = i;
    }
    printf("%d\n", modus);
    return 0;
}
