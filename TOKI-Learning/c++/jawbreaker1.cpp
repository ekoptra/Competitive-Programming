#include <cstdio>

int m, n, posisi[25][25], b, k, point;
bool visited[25][25];

int ambil(int b, int k, int warna)
{
    if ((b < 0) || (k < 0) || (b > m - 1) || (k > n - 1))
        return 0;
    else if ((posisi[b][k] != warna) || visited[b][k])
        return 0;k
    else
    {
        visited[b][k] = true;
        return ambil(b + 1, k, warna) + ambil(b - 1, k, warna) + ambil(b, k + 1, warna) + ambil(b, k - 1, warna) + 1;
    }
}

int main()
{
    scanf("%d %d", &m, &n);
    for (int i = 0; i < m; i++)
        for (int j = 0; j < n; j++)
        {
            visited[i][j] = false;
            scanf("%d", &posisi[i][j]);
        }
    scanf("%d %d", &b, &k);
    point = ambil(b, k, posisi[b][k]);
    printf("%d\n", point * (point - 1));
    return 0;
}
