#include <cstdio>

int n;

void tulis(int pembagi, int jml)
{
    if (jml == 1)
    {

        if (n == 1)
            printf("%d\n", pembagi);
        else
            printf("%d x ", pembagi);
    }
    else
    {
        if (n == 1)
            printf("%d^%d\n", pembagi, jml);
        else
            printf("%d^%d x ", pembagi, jml);
    }
}

void cacah(int pembagi)
{
    int jml = 0;
    while (n % pembagi == 0)
    {
        n /= pembagi;
        jml++;
    }
    tulis(pembagi, jml);
}

int main()
{
    int i = 2;
    scanf("%d", &n);
    while (n > 1)
    {
        if (n % i == 0)
        {
            cacah(i);
        }
        i++;
    }
    return 0;
}
