#include <cstdio>
#include <string>

using namespace std;

int main()
{
    char buff[101];
    int k;
    scanf("%s", buff);
    string kata = buff;
    scanf("%d", &k);
    for (int i = 0; i < kata.length(); i++)
    {
        int ord = kata[i] + k;
        if (ord > 'z')
            ord = ord - 'z' + 'a' - 1;
        kata[i] = ord;
    }
    printf("%s\n", kata.c_str());
    return 0;
}
