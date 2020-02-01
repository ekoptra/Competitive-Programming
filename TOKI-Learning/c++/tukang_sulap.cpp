#include <cstdio>

void tukar(int &a, int &b)
{
    int c = a;
    a = b;
    b = c;
}

int main()
{
    int n, i, j, t, p, x, q, y;
    char buff1[5], buff2[5];
    scanf("%d", &n);
    int bola[2][n];
    for (i = 0; i < 2; i++)
        for (j = 0; j < n; j++)
            scanf("%d", &bola[i][j]);
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%s %d %s %d", &buff1, &x, &buff2, &y);
        p = buff1[0] - 'A';
        q = buff2[0] - 'A';
        tukar(bola[p][x - 1], bola[q][y - 1]);
    }
    for (i = 0; i < 2; i++)
        for (j = 0; j < n; j++)
            if (j == n - 1)
                printf("%d\n", bola[i][j]);
            else
                printf("%d ", bola[i][j]);
    return 0;
}
