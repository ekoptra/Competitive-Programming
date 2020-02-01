#include <cstdio>

int main()
{
    int myScore[9], t, n, p, s, i, j, sum;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        for (j = 0; j < 9; j++)
            myScore[j] = 0;
        for (j = 0; j < n; j++)
        {
            scanf("%d %d", &p, &s);
            if (p <= 8)
                if (myScore[p] < s)
                    myScore[p] = s;
        }
        sum = 0;
        for (j = 1; j < 9; j++)
            sum += myScore[j];
        printf("%d\n", sum);
    }
    return 0;
}
