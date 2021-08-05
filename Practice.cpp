#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main() {


    ifstream input("codefile.txt"); //ifstream, ofstream
    string line;

    ofstream myfile("validIdentifiers.txt");
    int vowels=0;
    int consonants=0;
    while (getline(input, line, ' ')) {
for(int i = 0; line[i]!='\0'; ++i)
{


    if(line[i]=='a' || line[i]=='e' || line[i]=='i' ||
           line[i]=='o' || line[i]=='u' || line[i]=='A' ||
           line[i]=='E' || line[i]=='I' || line[i]=='O' ||
           line[i]=='U')
       {
           ++vowels;
       }
       else
           ++consonants;


}
      cout << line << endl;
        myfile << line<<endl;


    }

    cout<<"Vowels: " <<vowels<<endl;
    cout<<"Consonants:" <<consonants;
    input.close();
    myfile.close();

    return 0;

}
