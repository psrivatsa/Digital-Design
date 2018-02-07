#include <stdio.h>
#include <dpiheader.h>
//#include <svdpi.h>

// Global Variable
int count = 1;

// Hello function
void hello () {

// Variables
int k = 1;

// Just a print 
printf("hello!! Global Var = %d :: Local Var = %d \n ", count, k);

// Increment counts
count++;
k++;

}
