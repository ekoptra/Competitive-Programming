#include <cstdio>
#include <cstring>

char s[101];

bool polidrom(int awal, int akhir)
{
    if (akhir <= awal)
        return true;
    else if (s[awal] != s[akhir])
        return false;
    else
        return polidrom(awal + 1, akhir - 1);
}

int main()
{
    scanf("%s", s);
    if (polidrom(0, strlen(s) - 1))
        printf("YA\n");
    else
        printf("BUKAN\n");
    return 0;
}
