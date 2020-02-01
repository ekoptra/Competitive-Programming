#include <cstdio>

void merge(int arr[], int kiri, int tengah, int tengah1, int kanan)
{
    int pkiri = kiri;
    int pkanan = tengah1;
    int size = kanan - kiri + 1;
    int tmp[size];
    size = -1;
    while ((pkiri <= tengah) && (pkanan <= kanan))
    {
        size++;
        if (arr[pkiri] <= arr[pkanan])
        {
            tmp[size] = arr[pkiri];
            pkiri++;
        }
        else
        {
            tmp[size] = arr[pkanan];
            pkanan++;
        }
    }

    while (pkiri <= tengah)
    {
        size++;
        tmp[size] = arr[pkiri];
        pkiri++;
    }

    while (pkanan <= kanan)
    {
        size++;
        tmp[size] = arr[pkanan];
        pkanan++;
    }

    for (int i = 0; i <= size; i++)
        arr[kiri + i] = tmp[i];
}

void mergeSort(int arr[], int kiri, int kanan)
{
    if (kiri < kanan)
    {
        int tengah = (kiri + kanan) / 2;
        mergeSort(arr, kiri, tengah);
        mergeSort(arr, tengah + 1, kanan);
        merge(arr, kiri, tengah, tengah + 1, kanan);
    }
}

int main()
{
    int t, n, position[100000], minimum, i, j, prev, next, newTree;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        for (j = 0; j < n; j++)
            scanf("%d", &position[j]);
        mergeSort(position, 0, n - 1);
        newTree = position[i] - 2;
        minimum = 0;
        for (j = 0; j < n; j++)
        {
            if (j == 0)
                prev = position[0] - 2;
            else
                prev = position[j - 1];

            if (j == n - 1)
                next = position[j] + 2;
            else
                next = position[j + 1];

            if ((position[j] != prev + 1) && (position[j] != next - 1) && (position[j] != newTree + 1))
            {
                minimum++;
                newTree = position[j] + 1;
            }
        }
        printf("%d\n", minimum);
    }
    return 0;
}
