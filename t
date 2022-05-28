#include<stdio.h>
#include<stdlib.h>

struct node
{
    int info;
    struct node *next;

};
void insertionatbeg(struct node **head);
void traversal(struct node *head);

void main(){
 
  struct node *head=NULL;
    int choice;
    
    while(1){
          printf("enter a choice");
            scanf("%d",&choice);
        switch(choice){
          
        case 1: insertionatbeg(&head);
                break;
        case 2: traversal(head);

        case 3: exit(0);
      
             
        }
    }

   
}

 void insertionatbeg(struct node **head)
 {  int item;
     struct node *ptr;
    ptr=(struct node*)malloc(sizeof(struct node));
    printf("enter the element");
               scanf("%d",&item);
      ptr->info=item;
      if(*head==NULL){
          (*head)=ptr;
          ptr->next=NULL;
          }
     else{
      
         ptr->next=(*head);
         (*head)=ptr;

          }
      }
void traversal(struct node *head){
    
    while (head->next!=NULL){
        printf("%d", head->info);
		head = head->next;
    }
	printf("%d", head->info);
    
}

 
   

       

