#include <cstdio>
#include <string>

using namespace std;
int main()
{
    char buff[101];
    scanf("%s", buff);
    string s1 = buff;
    scanf("%s", buff);
    string s2 = buff;
    scanf("%s", buff);
    string s3 = buff;
    scanf("%s", buff);
    string s4 = buff;
    s1.erase(s1.find(s2), s2.length());
    s1.insert(s1.find(s3) + s3.length(), s4);
    printf("%s\n", s1.c_str());
    return 0;
}
