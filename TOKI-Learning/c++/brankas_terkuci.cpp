#include <cstdio>

bool tulis[10];
int isi[10];
int n, k;

void cetak()
{
    int i;
    for (i = 1; i < k; i++)
        printf("%d ", isi[i]);
    printf("%d\n", isi[i]);
}

void kedalaman(int x, int bawah)
{
    if (x > k)
        cetak();
    else
    {
        for (int i = bawah; i <= n; i++)
        {
            if (tulis[i] == false)
            {
                tulis[i] = true;
                isi[x] = i;
                kedalaman(x + 1, i + 1);
                tulis[i] = false;
            }
        }
    }
}

int main()
{
    scanf("%d %d", &n, &k);
    for (int i = 1; i <= n; i++)
        tulis[i] = false;
    kedalaman(1, 1);
    return 0;
}
