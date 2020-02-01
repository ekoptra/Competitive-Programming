#include <cstdio>
#include <string>

using namespace std;

void toCamelCase(string &s)
{
    int underscore = s.find("_");
    while (underscore != -1)
    {
        s[underscore + 1] -= 'a' - 'A';
        s.erase(underscore, 1);
        underscore = s.find("_");
    }
}

void to_snake_case(string &s)
{
    for (int i = 0; i < s.length(); i++)
        if (s[i] <= 'Z')
        {
            s[i] -= 'A' - 'a';
            s.insert(i, "_");
        }
}

int main()
{
    char buff[101];
    scanf("%s", buff);
    string s = buff;
    if (s.find("_") != -1)
        toCamelCase(s);
    else
        to_snake_case(s);
    printf("%s\n", s.c_str());
    return 0;
}
