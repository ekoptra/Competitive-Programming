#include <cstdio>

int main()
{
    int angka[101], jumlah;
    for (jumlah = 0; scanf("%d", &angka[jumlah]) != EOF; jumlah++)
        ;
    for (jumlah--; jumlah >= 0; jumlah--)
        printf("%d\n", angka[jumlah]);
    return 0;
}
