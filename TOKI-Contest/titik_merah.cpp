#include <iostream>
#include <vector>
#include <algorithm>
#include <iomanip>

using namespace std;

int main()
{
    int n, r, v, tmp;
    cin >> n >> r >> v;
    vector<int> w;
    for (auto i = 0; i < n; i++)
    {
        cin >> tmp;
        w.push_back(tmp);
    }
    auto start = w.begin();
    auto end = w.end();
    sort(start, end);

    if (binary_search(start, end, v))
        cout << -1 << endl;
    else
    {
        int low_index = lower_bound(start, end, v) - start - 1;
        int upper_index = upper_bound(start, end, v) - start;

        int d;
        if (low_index >= 0)
        {
            d = abs(w[low_index] - v);
            if (upper_index < w.size())
            {
                if (d > abs(w[upper_index] - v))
                    d = abs(w[upper_index] - v);
            }
        }
        else
        {
            d = abs(w[upper_index] - v);
        }

        cout << setprecision(8) << (double)r / d << endl;
    }
    return 0;
}