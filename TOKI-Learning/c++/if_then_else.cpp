#include <cstdio>

int main()
{
    int n;
    scanf("%d", &n);
    if (n > 0)
        printf("positif");
    else if (n < 0)
        printf("negatif");
    else
        printf("nol");
    printf("\n");
    return 0;
}
