#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    int arr[10], num, i, j, temp;

    for(i=0; i<10; i++){
        printf("%d. Number: ",i+1); scanf("%d",(arr+i));
    }

    for(i=0; i<10; i++){
        for(j=1; j<10; j++){
            if(arr[j] > arr[j-1]){
                temp= arr[j];
                arr[j]= arr[j-1];
                arr[j-1]= temp;
            }
        }
    }

    printf("\n");

    for(i=0; i<10; i++){
        printf("%d. Number: %d\n",i+1,arr[i]);
    }

    return 0;
}