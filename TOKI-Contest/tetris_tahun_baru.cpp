#include <iostream>

using namespace std;

int main()
{
    int n, persegi4, jumlah, tambahan = 0;
    cin >> n;
    persegi4 = n * 2 / 4;
    jumlah = persegi4 * persegi4 * 4;

    if (n % 2 != 0)
        tambahan = (persegi4 * 4);

    cout << jumlah + tambahan << endl;
}