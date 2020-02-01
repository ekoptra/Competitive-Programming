#include <cstdio>

int faktorial(int a)
{
    if (a == 1)
        return 1;
    else if (a % 2 == 0)
        return (a / 2) * faktorial(a - 1);
    else
        return a * faktorial(a - 1);
}

int main()
{
    int n;
    scanf("%d", &n);
    printf("%d\n", faktorial(n));
    return 0;
}
