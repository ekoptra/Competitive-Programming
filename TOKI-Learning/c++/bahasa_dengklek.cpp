#include <cstdio>
#include <string>

using namespace std;

int main()
{
    char buff[101];
    scanf("%s", buff);
    string s = buff;
    for (int i = 0; i < s.length(); i++)
        if (s[i] <= 'Z')
            s[i] = s[i] - 'A' + 'a';
        else
            s[i] = s[i] - 'a' + 'A';
    printf("%s\n", s.c_str());
    return 0;
}
