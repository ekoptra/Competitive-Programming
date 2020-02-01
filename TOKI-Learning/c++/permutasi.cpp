#include <cstdio>
#include <string>

using namespace std;

bool angka[10];
int n;
string tmp;

bool cek(string s)
{
    int i;
    bool zigzag = true;
    for (i = 1; i < s.length() - 1; i++)
    {
        if ((s[i] > s[i - 1]) && (s[i] < s[i + 1]))
            zigzag = false;
        if ((s[i] < s[i - 1]) && (s[i] > s[i + 1]))
            zigzag = false;
        if (!zigzag)
            break;
    }
    if (zigzag)
        return true;
    else
        return false;
}

void kedalaman(int x, string s)
{
    if (x > n)
    {
        if (cek(s))
            printf("%s\n", s.c_str());
    }
    else
    {
        for (int i = 1; i <= n; i++)
        {
            if (angka[i] == false)
            {
                angka[i] = true;
                char buff[2] = {i + 48};
                tmp = buff;
                kedalaman(x + 1, s + tmp);
                angka[i] = false;
            }
        }
    }
}

int main()
{
    scanf("%d", &n);
    kedalaman(1, "");
    return 0;
}
