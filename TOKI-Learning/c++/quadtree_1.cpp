#include <cstdio>
#include <string>

using namespace std;

int data[129][129];
int jumlah = 0;
string jawaban[128 * 128];

bool cek(int r, int c, int k)
{
    for (int i = r; i < r + k; i++)
        for (int j = c; j < c + k; j++)
            if (data[i][j] != data[r][c])
                return false;
    return true;
}

void kodekan(int r, int c, int k, string s)
{
    if (cek(r, c, k))
    {
        if (data[r][c] == 1)
        {
            jumlah++;
            jawaban[jumlah] = "1" + s;
        }
    }
    else
    {
        kodekan(r, c, k / 2, s + "0");
        kodekan(r, c + (k / 2), k / 2, s + "1");
        kodekan(r + (k / 2), c, k / 2, s + "2");
        kodekan(r + (k / 2), c + (k / 2), k / 2, s + "3");
    }
}

int rubah(int a, int b)
{
    if (b >= a)
        return b;
    else
        return rubah(a, b * 2);
}

int main()
{
    int r, c, i, j;
    scanf("%d %d", &r, &c);
    int n = rubah(r, 2);
    for (i = 1; i <= n; i++)
        for (j = 1; j <= n; j++)
            data[i][j] = 0;
    for (i = 1; i <= r; i++)
        for (j = 1; j <= c; j++)
            scanf("%d", &data[i][j]);
    kodekan(1, 1, n, "");
    printf("%d\n", jumlah);
    for (i = 1; i <= jumlah; i++)
        printf("%s\n", jawaban[i].c_str());
    return 0;
}
