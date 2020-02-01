#include <cstdio>

int main()
{
    int n;
    scanf("%d", &n);
    if (n < 10)
        printf("satuan");
    else if (n < 100)
        printf("puluhan");
    else if (n < 1000)
        printf("ratusan");
    else if (n < 10000)
        printf("ribuan");
    else
        printf("puluhribuan");
    printf("\n");
    return 0;
}
