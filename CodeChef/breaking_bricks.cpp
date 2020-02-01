#include <cstdio>

int w[3];

int min(int a, int b)
{
    if (a < b)
        return a;
    else
        return b;
}

int solve(int bawah, int atas, int s)
{
    if (atas < bawah)
        return 0;
    int i = bawah, j = atas, strength = s;
    while (i <= atas && strength >= w[i])
    {
        strength -= w[i];
        i++;
    }
    strength = s;
    while (j >= bawah && strength >= w[j])
    {
        strength -= w[j];
        j--;
    }
    return min(1 + solve(i, atas, s), 1 + solve(bawah, j, s));
}

int main()
{
    int t, s;
    scanf("%d", &t);
    for (int i = 0; i < t; i++)
    {
        scanf("%d %d %d %d", &s, &w[0], &w[1], &w[2]);
        printf("%d\n", solve(0, 2, s));
    }
    return 0;
}
