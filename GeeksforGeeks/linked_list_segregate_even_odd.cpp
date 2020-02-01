#include <stdio.h>
#include <stdlib.h>

typedef struct Node
{
    int data;
    struct Node *next;
} node;

void pushBack(node **head, int x)
{
    if (*head == NULL)
    {
        node *newNode = (node *)malloc(sizeof(node));
        newNode->data = x;
        newNode->next = NULL;
        *head = newNode;
    }
    else
        pushBack(&(*head)->next, x);
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

node *segregate(node *head)
{
    node *even = NULL, *odd = NULL, *tmp = NULL;
    while (head != NULL)
    {
        if (head->data % 2 == 0)
            pushBack(&even, head->data);
        else
            pushBack(&odd, head->data);
        head = head->next;
    }
    if (even != NULL)
    {

        tmp = even;
        while (tmp->next != NULL)
            tmp = tmp->next;
        tmp->next = odd;
        return even;
    }
    else
        return odd;
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
            pushBack(&head, tmp);
        }
        head = segregate(head);
        printList(head);
    }
    return 0;
}
