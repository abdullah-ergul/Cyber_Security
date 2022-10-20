#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main(){
    char str[100], temp[100];
    int i;
    FILE *mars, *mars_ters;

    if((mars= fopen("istiklal_marsi.txt","r+")) == NULL){
        printf("File Can't Open!\n");
        return 1;
    }

    if((mars_ters= fopen("istiklal_marsi_ters.txt","w+")) == NULL){
        printf("File Can't Create!\n");
        return 1;
    }

    fscanf(mars,"%[^\n]%*c", str);
    for(i=0; i<50; i++){
        if(str == temp){
            printf("*****");
        }
        strcpy(temp,str);
        strrev(str);
        fprintf(mars_ters, "%s\n", str);
        printf("%s\n",temp);

        fscanf(mars,"%[^\n]%*c", str);
    }

    return 0;
}