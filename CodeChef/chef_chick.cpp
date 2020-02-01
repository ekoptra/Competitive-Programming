#include <cstdio>

int main(int argc, char const *argv[])
{
    int t, n, tmp, smallest;
    scanf("%d", &t);
    for (int i = 0; i < t; i++)
    {
        scanf("%d", &n);
        smallest = 1000000;
        for (int j = 0; j < n; j++)
        {
            scanf("%d", &tmp);
            if (tmp < smallest)
                smallest = tmp;
        }
        printf("%d\n", smallest);
    }
    return 0;
}
