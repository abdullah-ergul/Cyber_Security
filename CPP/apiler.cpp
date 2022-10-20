#include <iostream>
#include <stdio.h>
#include <string>
#include <Windows.h>


int main(){
    HANDLE hfile = CreateFileA(
        "C:\\Users\\abdul\\Desktop\\zayotem.txt",           //dosya ismi
        GENERIC_ALL,                                        //izinler
        0,                                                  //diğer process'ler handle alamıyor
        NULL,                                               
        CREATE_ALWAYS,                                      //yeni dosya oluşturmak için 
        FILE_ATTRIBUTE_NORMAL,                              //dosya yetkisi (readonly vs.)
        NULL
    );

    if (hfile == INVALID_HANDLE_VALUE) {
        std::cout << "cpp bilmeyen de ne bilim :D\n" <<  GetLastError() << std::endl;

    }
    else{
    std::cout << "helal sana basardin" << std::endl;
    }
    char buffer[] = "ZAYOTEM was here";
    DWORD dwBytesToWrite = strlen(buffer) * sizeof(char); //kaç byte yazması gerektiğini buluyo
    DWORD dwBytesWritten = 0;
    WriteFile(
        hfile,                  //dosyanın handle'ı
        (void*)buffer,          //yazılacak yer, ayrılmış alan
        dwBytesToWrite,         //kaç byte yazılacağı
        &dwBytesWritten,        //kaç byte yazıldığı
        NULL
    );

    CloseHandle(hfile);
}

