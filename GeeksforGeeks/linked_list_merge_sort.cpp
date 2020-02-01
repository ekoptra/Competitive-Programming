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

void frontBackSplit(struct node *source, struct node **front, struct node **back)
{
    node *slow, *fast;
    slow = source;
    fast = source->next;
    while (fast != NULL)
    {
        fast = fast->next;
        if (fast != NULL)
        {
            slow = slow->next;
            fast = fast->next;
        }
    }
    *front = source;
    *back = slow->next;
    slow->next = NULL;
}

node *merge(node *a, node *b)
{
    node *result = NULL;
    if (a == NULL)
        return b;
    else if (b == NULL)
        return a;

    if (a->data <= b->data)
    {
        result = a;
        result->next = merge(a->next, b);
    }
    else
    {
        result = b;
        result->next = merge(a, b->next);
    }
    return result;
}

void mergeSort(struct node **headRef)
{
    node *head = *headRef;
    node *a, *b;

    if ((head == NULL) || (head->next == NULL))
        return;

    frontBackSplit(head, &a, &b);
    mergeSort(&a);
    mergeSort(&b);
    *headRef = merge(a, b);
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
    mergeSort(&head);
    printList(head);
    return 0;
}
