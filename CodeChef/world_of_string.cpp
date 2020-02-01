#include <cstdio>

bool isVowels(char a)
{
    if ((a == 'a') || (a == 'i') || (a == 'e') || (a == 'u') || (a == 'o'))
        return true;
    else
        return false;
}

int main()
{
    int t, n, i, j, max, hitung;
    char kata[100001], before;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        scanf("%s", kata);
        hitung = 0;
        max = 0;
        before = 1;
        for (j = 0; j < n + 1; j++)
        {
            if (isVowels(kata[j]))
            {
                if (kata[j] != before)
                    hitung++;
                else
                {
                    if (max < hitung)
                        max = hitung;
                    hitung = 1;
                }
                before = kata[j];
            }
            else
            {
                if (max < hitung)
                    max = hitung;
                hitung = 0;
                before = 1;
            }
        }
        printf("%d\n", max);
    }
    return 0;
}
