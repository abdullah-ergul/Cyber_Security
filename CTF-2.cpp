#include <iostream>

int main(){
    int i;
    std::string a = {"RIQG\ME::sn}ffqWlmgjn}{ki|agfu"};

    for(i=0; i < a.length(); i++)
        a[i]  ^= 8;

    std::cout << a;

    return 0;
}

//52 49 51 47 5c 4d 45 3a 3a 73 6e 7d 66 66 71 57 6c 6d 67 6a 6e 7d 7b 6b 69 7c 61 67 66 75