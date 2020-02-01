#include <cstdio>
#include <string>

using namespace std;

int main()
{
    char buff[101];
    scanf("%s", buff);
    string s = buff;
    scanf("%s", buff);
    string t = buff;
    while (s.find(t) != -1)
        s.erase(s.find(t), t.length());
    printf("%s\n", s.c_str());
    return 0;
}
