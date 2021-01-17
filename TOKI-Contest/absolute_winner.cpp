#include <cstdio>

int main()
{
    int a, b, c, round;
    scanf("%d %d %d", &a, &b, &c);
    round = (a + b + c) / 7;
    if ((a == round * 4) || (b == round * 4) || (c == round * 4))
        printf("YA\n");
    else
        printf("TIDAK\n");
    return 0;
}