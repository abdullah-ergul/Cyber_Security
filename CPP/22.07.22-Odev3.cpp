#include <iostream>
#include <fstream>
#include <windows.h>


std::string xorEnc(std::string str) {
    char newStr[15];
    char Key = 'A';
    int len = str.length();
    for (int i = 0; i < len; i++){
        str[i] = str[i] ^ Key;
        newStr[i] = str[i];
    }
    std::string s(newStr);
    return s;
}

int main(){
    CreateDirectory ("C:\\Abdullah\\CyberSecurity\\Zayotem\\22.07.22-Odev-3", NULL);
    CreateDirectory ("C:\\Abdullah\\CyberSecurity\\Zayotem\\22.07.22-Odev-3\\txt", NULL);
    CreateDirectory ("C:\\Abdullah\\CyberSecurity\\Zayotem\\22.07.22-Odev-3\\pdf", NULL);
    CreateDirectory ("C:\\Abdullah\\CyberSecurity\\Zayotem\\22.07.22-Odev-3\\docx", NULL);
    CreateDirectory ("C:\\Abdullah\\CyberSecurity\\Zayotem\\22.07.22-Odev-3\\x", NULL);

    // Create txt
    std::ofstream myFileC("C:/Abdullah/CyberSecurity/Zayotem/22.07.22-Odev-3/txt/example.txt");
    myFileC << "SiberVatan2022";
    myFileC.close();
    // Create pdf
    // TODO PoDoFo::PdfMemDocument pdf("C:/Abdullah/CyberSecurity/Zayotem/22.07.22-Odev-3/pdf/example.txt");
    // Create docx
    // ! 

    // ------------------------

    std::fstream myFile("C:/Abdullah/CyberSecurity/Zayotem/22.07.22-Odev-3//txt//example.txt");
    std::string myStr;
    while( std::getline(myFile, myStr) ){
        myFile << myStr;
    }
    myStr= xorEnc(myStr);
    remove("C:/Abdullah/CyberSecurity/Zayotem/22.07.22-Odev-3//txt//example.txt");

    std::ofstream myFileW("C:/Abdullah/CyberSecurity/Zayotem/22.07.22-Odev-3//txt//example.txt");
    myFileW << myStr;

    myFile.close();
    return 0;
}