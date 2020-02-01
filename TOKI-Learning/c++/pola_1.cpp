#include <cstdio>

int main(int argc, char const *argv[])
{
    int n, k;
    scanf("%i %i", &n, &k);
    int i;
    for (i = 1; i <= n; i++)
    {
        if (i % k == 0)
        {
            printf("*");
            if (i != n)
            {
                printf(" ");
            }
        }
        else
        {
            printf("%i", i);
            if (i != n)
            {
                printf(" ");
            }
        }
    }
    printf("\n");
    return 0;
}
