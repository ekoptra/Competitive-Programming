#include <cstdio>

int main()
{
    int t, n, quantity, discount, i, j;
    double rugi, price, pricetmp;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        rugi = 0;
        for (j = 0; j < n; j++)
        {
            scanf("%lf %d %d", &price, &quantity, &discount);
            pricetmp = price;
            price = price + (price * discount / 100);
            price = price - (price * discount / 100);
            rugi += (pricetmp - price) * quantity;
        }
        printf("%lf\n", rugi);
    }
    return 0;
}
