#include <iostream>
#include <Windows.h>

int main(){
    int i;
    char str[15]= "sibervatan2022";
    LPVOID ptr = VirtualAlloc(NULL,20,MEM_RESERVE,PAGE_READWRITE);
    ptr = VirtualAlloc(ptr,20,MEM_COMMIT,PAGE_READWRITE);
    char* char_ptr = static_cast<char*>(ptr);
    
    for(i=0; i<450; i++){
        char_ptr[i]= str[i];
    }

    //VirtualFree(ptr, 0, MEM_RELEASE);
    return 0;
}
