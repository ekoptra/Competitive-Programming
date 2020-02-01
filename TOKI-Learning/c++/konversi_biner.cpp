#include <cstdio>
#include <string>

void konversi(int x)
{
    if (x == 1)
        printf("1");
    else if (x == 0)
        printf("0");
    else if (x % 2 == 0)
    {
        konversi(x / 2);
        printf("0");
    }
    else
    {
        konversi(x / 2);
        printf("1");
    }
}

int main()
{
    int n;
    scanf("%d", &n);
    konversi(n);
    printf("\n");
    return 0;
}
