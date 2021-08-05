/*read space separated text file in c++*/

#include <iostream>
#include <fstream>
#include <string>

using namespace std;
bool isIdent(string line){

for(int i = 0; line[i]!='\0'; i++)
{
    if(!((line[i] >= 'a' && line[i] <= 'z') || (line[i] >= 'A' && line[i] <= 'Z') || (line[i]=='_')))
    {
       return false;

    }

}
return true;
}


bool isOperate(string line){
if(line[0]=='=' || line[0]=='+' || line[0]=='-' || line[0]=='/' || line[0]=='*' )
    {
       return true;

    }

}


bool isNumber(string line){
   for(int j =0;line[j]!='\0'; j++)
   {


if(!(line [j] >= '0' && line[j] <= '9'))
    {
       return false;
    }
   }
   return true;
}
int main() {
    ifstream input("invalidity.txt"); //ifstream, ofstream
    string line;

    ofstream myfile("Newinvalidity.txt");


    while (getline(input, line, ' ')) {

       if(isIdent(line)==false)
       {

           cout<<line<<" is not a valid Identifer"<<endl;

       }
      if(isOperate(line)==true)
      {
          cout<<line<<" is an Operator"<<endl;

      }
      if(isNumber(line)==true)
      {
        cout<<line<<" is a Number"<<endl;
      }
    }

    input.close();
    myfile.close();

    return 0;

}


