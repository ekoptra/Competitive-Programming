#include <cstdio>
#include <cmath>

struct kordinat
{
    unsigned long long x, y;
};

kordinat shareCat, tipe1[5001], tipe2[5001], tipe3[5001];
double solve[2][5001][5001];
bool computed[5001][5001];
bool computed1[5001][5001];
bool computed2[5001][5001];
bool tambah;
double memotmp1[5001][5001];
double memotmp2[5001][5001];
double memoduaKeTiga[5001][5001];
double memosatuKeTiga[5001][5001];
int kurang;

double min(double x, double y)
{
    if (x > y)
        return y;
    else
        return x;
}

unsigned long long kuadrat(unsigned long long x)
{
    return x * x;
}

double jarakTitik(unsigned long long x1, unsigned long long y1, unsigned long long x2, unsigned long long y2)
{k
    return sqrt(kuadrat(x1 - x2) + kuadrat(y1 - y2));
}

double jarakTempuh(unsigned long long n, unsigned long long m, unsigned long long k)
{
    double tmp1, tmp2, duaKetiga, satuKetiga;
    if (computed[n][m])
    {
        tmp1 = memotmp1[n][m];
        tmp2 = memotmp2[n][m];
    }
    else
    {
        tmp1 = jarakTitik(tipe1[n].x, tipe1[n].y, tipe2[m].x, tipe2[m].y);
        tmp2 = tmp1;
        tmp1 += jarakTitik(shareCat.x, shareCat.y, tipe1[n].x, tipe1[n].y);
        tmp2 += jarakTitik(shareCat.x, shareCat.y, tipe2[m].x, tipe2[m].y);
        computed[n][m] = true;
        memotmp1[n][m] = tmp1;
        memotmp2[n][m] = tmp2;
    }

    if (computed1[n][k])
        tmp2 += memosatuKeTiga[n][k];
    else
    {
        satuKetiga = jarakTitik(tipe1[n].x, tipe1[n].y, tipe3[k].x, tipe3[k].y);
        tmp2 += satuKetiga;
        computed1[n][k] = true;
        memosatuKeTiga[n][k] = satuKetiga;
    }

    if (computed2[m][k])
        tmp1 += memoduaKeTiga[m][k];
    else
    {
        duaKetiga = jarakTitik(tipe2[m].x, tipe2[m].y, tipe3[k].x, tipe3[k].y);
        tmp1 += duaKetiga;
        computed2[m][k] = true;
        memoduaKeTiga[m][k] = duaKetiga;
    }
    return min(tmp1, tmp2);
}

double jarakMinimal(unsigned long long n, unsigned long long m, unsigned long long k)
{
    for (int i = 0; i <= k; i++)
        solve[1][0][i] = 1000000000000000000;
    for (int i = 0; i <= m; i++)
        solve[1][i][0] = 1000000000000000000;
    for (int i = 0; i <= m; i++)
        for (int j = 0; j <= k; j++)
            solve[0][i][j] = 1000000000000000000;

    for (int i = 1; i <= n; i++)
    {
        int now;
        double tmp;
        if (tambah)
            now = (i + 1) % 2;
        else
            now = i % 2;
        int prevNow = 1 - now;
        tmp = jarakTitik(shareCat.x, shareCat.y, tipe1[i].x, tipe1[i].y);
        if (tmp > solve[prevNow][m][k])
        {
            tambah = !tambah;
            continue;
        }
        kurang = 0;
        for (int j = 1; j <= m; j++)
        {
            double tmp2 = jarakTitik(shareCat.x, shareCat.y, tipe2[j].x, tipe2[j].y);
            if ((tmp2 > solve[now][j - 1 - kurang][k]) && (j != m))
            {
                kurang++;
                continue;
            }
            for (int l = 1; l <= k; l++)
                solve[now][j][l] = min(min(jarakTempuh(i, j, l), solve[prevNow][j][l]), min(solve[now][j - 1 - kurang][l], solve[now][j][l - 1]));
            kurang = 0;
        }
    }
    if (tambah)
        return solve[(n + 1) % 2][m][k];
    else
        return solve[n % 2][m][k];
}

int main()
{
    unsigned long long n, m, k, t, i, j, o, p;
    scanf("%llu", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%llu %llu", &shareCat.x, &shareCat.y);
        scanf("%llu %llu %llu", &n, &m, &k);
        for (j = 1; j <= n; j++)
            scanf("%llu %llu", &tipe1[j].x, &tipe1[j].y);
        for (j = 1; j <= m; j++)
            scanf("%llu %llu", &tipe2[j].x, &tipe2[j].y);
        for (j = 1; j <= k; j++)
            scanf("%llu %llu", &tipe3[j].x, &tipe3[j].y);
        for (j = 1; j <= n; j++)
            for (p = 1; p <= m; p++)
                computed[j][p] = false;
        for (j = 1; j <= n; j++)
            for (p = 1; p <= k; p++)
                computed1[j][p] = false;
        for (j = 1; j <= m; j++)
            for (p = 1; p <= k; p++)
                computed2[j][p] = false;
        tambah = false;
        printf("%0.10lf\n", jarakMinimal(n, m, k));
    }
    return 0;
}
