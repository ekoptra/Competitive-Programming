#include <cstdio>

typedef struct Node
{
    int x;
    struct Node *next;
} node;

void inserAtEnd(node **ptr, int newData)
{
    if (*ptr == NULL)
    {
        node *tmp = new node();
        tmp->x = newData;
        tmp->next = NULL;
        *ptr = tmp;
    }
    else
        inserAtEnd(&(**ptr).next, newData);
}

void insertAtBegining(node **ptr, int newData)
{
    node *tmp = new node();
    tmp->x = newData;
    if (*ptr != NULL)
        tmp->next = *ptr;
    else
        tmp->next = NULL;
    *ptr = tmp;
}

void printList(node *ptr)
{
    while (ptr->next != NULL)
    {
        printf("%d ", ptr->x);
        ptr = ptr->next;
    }
    printf("%d\n", ptr->x);
}

void deleteLinkedList(node **ptr)
{
    node *current = *ptr, *next;
    while (current != NULL)
    {
        next = current->next;
        delete current;
        current = next;
    }
    *ptr = NULL;
}

int main()
{
    int t, n, newData, insertOpt;
    scanf("%d", &t);
    for (int i = 0; i < t; i++)
    {
        node *head = NULL;
        scanf("%d", &n);
        for (int j = 0; j < n; j++)
        {
            scanf("%d %d", &newData, &insertOpt);
            if (insertOpt == 0)
                insertAtBegining(&head, newData);
            else
                inserAtEnd(&head, newData);
        }
        printList(head);
    }
    return 0;
}
