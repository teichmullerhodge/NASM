#include <stdio.h>

#define RESB_USERNAME 255

int main(int argc, char **argv) {

    char userName[RESB_USERNAME];    
    printf("Name: ");
    fgets(userName, RESB_USERNAME, stdin);

    int age = 0;
    printf("Age: ");
    scanf("%d", &age);

    printf("\nYour name is: %s\n", userName);
    printf("Your age is: %d\n", age);
    return 0;

    
}