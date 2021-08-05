#include<iostream>
using namespace std;

int main()
{
    char key[]={'if','break','switch'};


    char a;
    cout<< "Enter a key: ";


    cin>> a;


    for(int i=0;i<sizeof(key)/sizeof(key[0]);i++)
    {

     if(key[i]==a)
     {

        cout<<"The character is ok";
        break;
     }
    else
    {
        cout<<"The character is invalid";
        break;
    }
    }

}
