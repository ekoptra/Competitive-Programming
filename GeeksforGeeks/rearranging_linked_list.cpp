#include <cstdio>

typedef struct Node
{
    int data;
    struct Node *next;
} node;

void pushFront(node **head, int newData)
{
    node *newNode = new node;
    newNode->data = newData;
    if (*head == NULL)
        newNode->next = NULL;
    else
        newNode->next = *head;
    *head = newNode;
}

void printList(node *head)
{
    while (head != NULL)
    {
        printf("%d ", head->data);
        head = head->next;
    }
    printf("\n");
}

node *getTail(node *head)
{
    while (head->next != NULL)
        head = head->next;
    return head;
}

node *partition(node *head, node *end, node **newHead, node **newEnd)
{
    node *cur = head, *tail = end, *prev = NULL, *pivot = end, *tmp = NULL;
    while (cur != pivot)
    {
        if (cur->data > pivot->data)
        {
            if (prev == NULL)
                head = head->next;
            else
                prev->next = cur->next;
            tmp = cur;
            cur = cur->next;
            tmp->next = NULL;
            tail->next = tmp;
            tail = tail->next;
        }
        else
        {
            prev = cur;
            cur = cur->next;
        }
    }
    *newHead = head;
    *newEnd = tail;
    return pivot;
}

node *quickSortRecur(node *head, node *tail)
{
    if ((!head) || (head == tail))
        return head;

    node *newHead = NULL, *newEnd = NULL;
    node *pivot = partition(head, tail, &newHead, &newEnd);

    if (newHead != pivot)
    {
        node *tmp = newHead;
        while (tmp->next != pivot)
            tmp = tmp->next;
        tmp->next = NULL;

        newHead = quickSortRecur(newHead, getTail(newHead));
        tmp = getTail(newHead);
        tmp->next = pivot;
    }
    pivot->next = quickSortRecur(pivot->next, newEnd);
    return newHead;
}

void quickSort(node **head)
{
    *head = quickSortRecur(*head, getTail(*head));
}

node *getLastTwo(node *head)
{
    while ((head->next != NULL) && (head->next->next != NULL))
        head = head->next;
    return head;
}

void arrange(node *head)
{
    node *lastTwo = NULL, *tmp = NULL;
    while ((head != NULL) && (head->next != NULL))
    {
        lastTwo = getLastTwo(head);
        tmp = lastTwo->next;
        lastTwo->next = NULL;
        tmp->next = head->next;
        head->next = tmp;
        head = tmp->next;
    }
}

int main()
{
    int t, n, i, j, tmp;
    scanf("%d", &t);
    for (i = 0; i < t; i++)
    {
        scanf("%d", &n);
        node *head = NULL;
        for (j = 0; j < n; j++)
        {
            scanf("%d", &tmp);
            pushFront(&head, tmp);
        }
        quickSort(&head);
        arrange(head);
        printList(head);
    }
    return 0;
}
