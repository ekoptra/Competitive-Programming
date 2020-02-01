#include <cstdio>

struct node
{
    int data;
    struct node *next;
};

void push(struct node **head_ref, int x)
{
    struct node *newNode = new node;
    newNode->data = x;
    newNode->next = *head_ref;
    *head_ref = newNode;
}

void printList(struct node *head)
{
    while (head != NULL)
    {
        printf("%d ", head->data);
        head = head->next;
    }
    printf("\n");
}

struct node *getTail(struct node *head)
{
    while (head->next != NULL)
        head = head->next;
    return head;
}

struct node *partition(struct node *head, struct node *end, struct node **newHead, struct node **newEnd)
{
    struct node *cur = head, *tail = end, *prev = NULL, *pivot = end, *tmp = NULL;
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

struct node *quickSortRecur(struct node *head, struct node *end)
{
    if ((!head) || (head == end))
        return head;
    struct node *newHead = NULL, *newEnd = NULL;

    struct node *pivot = partition(head, end, &newHead, &newEnd);

    if (newHead != pivot)
    {
        struct node *tmp = newHead;
        while (tmp->next != pivot)
            tmp = tmp->next;
        tmp->next = NULL;

        newHead = quickSortRecur(newHead, tmp);

        tmp = getTail(newHead);
        tmp->next = pivot;
    }
    pivot->next = quickSortRecur(pivot->next, newEnd);
    return newHead;
}

void quickSort(struct node **head)
{
    *head = quickSortRecur(*head, getTail(*head));
}

int main()
{
    struct node *head = NULL;
    push(&head, 50);
    push(&head, 20);
    push(&head, 60);
    push(&head, 70);
    push(&head, 120);
    push(&head, 40);
    printList(head);
    quickSort(&head);
    printList(head);
    return 0;
}
