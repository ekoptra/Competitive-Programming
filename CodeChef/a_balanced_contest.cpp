#include <cstdio>

int main()
{
    int n, t, i, j;
    unsigned long long tmp, catewalk, hard, p, jumlahCatewalk, jumlahHard;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d %llu", &n, &p);
        catewalk = p / 2;
        hard = p / 10;
        jumlahCatewalk = 0;
        jumlahHard = 0;
        for (j = 0; j < n; j++)
        {
            scanf("%llu", &tmp);
            if (tmp >= catewalk)
                jumlahCatewalk++;
            else if (tmp <= hard)
                jumlahHard++;
        }
        if ((jumlahHard == 2) && (jumlahCatewalk == 1))
            printf("yes\n");
        else
            printf("no\n");
    }
    return 0;
}
