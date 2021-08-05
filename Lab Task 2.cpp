#include<iostream>
using namespace std;

int main()
{

    string vari;
    //string B= "C++";
    cout<< " Enter the varriable: ";
    cin>>vari;





      if(vari[0]=='C' && vari[1]=='+' && vari[2]=='+' )
    {
         cout<<" Variable is not ok!";
         return 0;
    }
    if((vari[0] >= 'a' && vari[0] <= 'z') || (vari[0] >= 'A' && vari[0] <= 'Z') || (vari[0]=='_'))
    {
        cout<<"Variable is Okay";

    }


    else

        cout<<" Variable is not ok!";



}

