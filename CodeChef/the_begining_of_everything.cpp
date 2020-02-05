#include <cstdio>

int main(int argc, char const *argv[])
{
    int t;
    char a[11];
    bool find;
    scanf("%d", &t);
    for (int i = 0; i < t; i++)
    {
        int j = 0, count = 0;
        find = true;
        scanf("%s", a);
        if (find)
        {
            while (a[j] != '\0')
            {
                if (a[j] == 'h')
                    break;
                j++;
            }
            if (a[j] == '\0')
                find = false;
        }

        if (find)
        {
            j = 0;
            while (a[j] != '\0')
            {
                if (a[j] == 'e')
                    break;
                j++;
            }
            if (a[j] == '\0')
                find = false;
        }

        if (find)
        {
            j = 0;
            while (a[j] != '\0')
            {
                if (a[j] == 'w')
                    break;
                j++;
            }
            if (a[j] == '\0')
                find = false;
        }

        if (find)
        {
            j = 0;
            while (a[j] != '\0')
            {
                if (a[j] == 'r')
                    break;
                j++;
            }
            if (a[j] == '\0')
                find = false;
        }

        if (find)
        {
            j = 0;
            while (a[j] != '\0')
            {
                if (a[j] == 'd')
                    break;
                j++;
            }
            if (a[j] == '\0')
                find = false;
        }

        if (find)
        {
            j = 0;
            while (a[j] != '\0')
            {
                if (a[j] == 'l')
                    count++;
                j++;
            }
            if (count != 3)
                find = false;
        }

        if (find)
        {
            j = 0;
            count = 0;
            while (a[j] != '\0')
            {
                if (a[j] == 'o')
                    count++;
                j++;
            }
            if (count != 2)
                find = false;
        }

        if (find)
            printf("Yes\n");
        else
            printf("No\n");
    }
    return 0;
}
