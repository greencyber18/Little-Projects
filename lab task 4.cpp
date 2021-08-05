#include<iostream>
using namespace std;
int main()
{
    string a;

    cout<<"Enter the comment: ";
    getline(cin,a);

    ;



    if((a[0]=='/' && a[1]=='/') || (a[0]=='/' && a[1]=='*') )
    {
        cout<<"This is a  comment!";
    }





else
    cout<<"This is not a comment!";

}
