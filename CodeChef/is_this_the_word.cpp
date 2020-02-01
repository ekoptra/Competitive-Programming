#include <cstdio>

int main()
{
    int t, i, j, k;
    char r[1001], g[1001];
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%s %s", r, g);
        j = 0;
        k = 0;
        while (r[k] != '\0')
        {
            if (r[k] == g[j])
                j++;
            if (g[j] == '\0')
                break;
            k++;
        }
        if (g[j] == '\0')
            printf("YES\n");
        else
            printf("NO\n");
    }
    return 0;
}
