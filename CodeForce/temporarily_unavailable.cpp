#include <cstdio>

int main()
{
    int a, b, c, t, r, batasBawah, batasAtas, jumlah, tmp;
    scanf("%d", &t);
    for (int i = 0; i < t; i++)
    {
        scanf("%d %d %d %d", &a, &b, &c, &r);
        batasAtas = c + r;
        batasBawah = c - r;
        if (a > b)
        {
            jumlah = a;
            a = b;
            b = jumlah;
        }
        jumlah = 0;
        if (a > batasAtas || b < batasBawah)
        {
            if (a > b)
                jumlah = a - b;
            else
                jumlah = b - a;
        }
        else
        {
            if (a < batasBawah)
            {
                tmp = batasBawah - a;
                if (tmp < 0)
                    tmp *= -1;
                jumlah += tmp;
            }
            if (b > batasAtas)
            {
                tmp = b - batasAtas;
                if (tmp < 0)
                    tmp *= -1;
                jumlah += tmp;
            }
        }
        printf("%d\n", jumlah);
    }
    return 0;
}
