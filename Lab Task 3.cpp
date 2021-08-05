#include <iostream>
#include <string.h>
#include <ctype.h>
using namespace std;
#define MAXINPUT 100
int main()
{
char input[MAXINPUT] = "";
int length;


 cout<<"Enter a string: ";
cin>>input;
length = strlen (input);
bool isNumber=true;
bool isFloat=false;

 for (int i=0;i<length; i++){
if(!(isdigit(input[i]) || input[0]=='-'))
{
     isNumber=false;


 }
 if(input[i]=='.')
{
    isFloat=true;
}
 }

if(isNumber){
    if(isFloat=true)
    {
        cout<<"The Nummber is a Float";
    }

}
return 0;
}
