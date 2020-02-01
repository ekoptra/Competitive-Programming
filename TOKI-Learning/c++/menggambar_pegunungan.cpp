#include <cstdio>

void tulis(int x)
{
    for (int i = 0; i < x; i++)
        printf("*");
    printf("\n");
}

void gambar(int x)
{
    if (x == 1)
        tulis(1);
    else
    {
        gambar(x - 1);
        tulis(x);
        gambar(x - 1);
    }
}

int main()
{
    int n;
    scanf("%d", &n);
    gambar(n);
    return 0;
}
