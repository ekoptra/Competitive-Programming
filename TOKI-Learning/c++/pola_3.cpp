#include <cstdio>

int main()
{
    int n, angka = 0;
    scanf("%d", &n);
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= i; j++)
        {
            printf("%d", angka);
            angka++;
            if (angka == 10)
                angka = 0;
        }
        printf("\n");
    }
    return 0;
}
