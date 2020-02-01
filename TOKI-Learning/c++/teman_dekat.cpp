#include <cstdio>

int n, d;

int pangkat(int nilai, int pangkat)
{
    int hasil = 1;
    for (int i = 1; i <= pangkat; i++)
        hasil *= nilai;
    return hasil;
}

int mutlak(int nilai)
{
    if (nilai >= 0)
        return nilai;
    else
        return (-1) * nilai;
}
int kedekatan(int x1, int x2, int y1, int y2)
{
    return pangkat(mutlak(x1 - x2), d) + pangkat(mutlak(y1 - y2), d);
}

int main()
{
    scanf("%d %d", &n, &d);
    int x[n], y[n], i, j, min = 2000000000, max = 0, dekat;
    for (i = 0; i < n; i++)
    {
        scanf("%d %d", &x[i], &y[i]);
        for (j = i - 1; j >= 0; j--)
        {
            dekat = kedekatan(x[i], x[j], y[i], y[j]);
            if (dekat > max)
                max = dekat;
            if (dekat < min)
                min = dekat;
        }
    }
    printf("%d %d\n", min, max);
    return 0;
}
