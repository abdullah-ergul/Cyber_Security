#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct user{
	int num; char name[15]; float mexam; float fexam; float grade; struct user *next;
};
typedef struct user node;

node * createList(int n);
void goToText(node * arr, int n);


int main(){
	int n;
    char choice[4];
	node *arr;
    printf("How many students in your list: "); scanf("%d",&n);

	arr= createList(n);

    printf("Do you want include students to a text file? (yes/no): "); scanf("%s",choice);
    if(!strcmp(choice,"yes"))
        goToText(arr,n);
	
	return 0;
}

node * createList(int n){
	int i;
	node *arr;
    arr= (node *)calloc(n,sizeof(node));

    printf("\n");
	for(i=0; i<n; i++){
		printf("%d. Student's Num: ",i+1); scanf("%d",&arr[i].num);
		printf("%d. Student's Name: ",i+1); scanf("%s",arr[i].name);
		printf("%d. Student's Midterm Exam: ",i+1); scanf("%f",&arr[i].mexam);
		printf("%d. Student's Final Exam: ",i+1); scanf("%f",&arr[i].fexam);
		arr[i].grade = (arr[i].mexam * 0.4) + (arr[i].fexam * 0.6);
		printf("\n");
	}
	printf("--------------------------------\n\n");

	return arr;
}

void goToText(node * arr, int n){
    FILE *myFile= fopen("Students.txt","w");
    int i;

    for(i=0; i<n; i++){
        fprintf(myFile, "%d\t%s\t%.2f\t%.2f\t%.2f\n", arr[i].num, arr[i].name, arr[i].mexam, arr[i].fexam, arr[i].grade);
    }

    fclose(myFile);
    printf("--------------------------------\n\n");
}
