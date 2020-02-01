#include <cstdio>
#include <cmath>

int main()
{
    int t, n, d, max;
    bool can;
    scanf("%d", &t);
    for (int i = 0; i < t; i++)
    {
        scanf("%d %d", &n, &d);
        can = false;
        if (n < d)
        {
            for (int j = 1; j < n; j++)
            {
                if (j + ceil((float)d / (j + 1)) <= n)
                {
                    can = true;
                    break;
                }
            }
        }
        else
            can = true;
        if (can)
            printf("YES\n");
        else
            printf("NO\n");
    }
    return 0;
}
