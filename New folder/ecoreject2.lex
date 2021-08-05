
%{
 
 

 
%}
 
 
%%
 
 
[a-z]+ {
 printf("\ncontains only lowercase letters = ");
 ECHO;
 
 }
 
 [A-Z]+ {
 printf("\ncontains only uppercase letters = ");
 ECHO;
 
 }
 
[a-zA-Z]+ {
 printf("\ncontains both uppercase and lowercase letters = ");
 ECHO;
 REJECT;
 
 }
 
. {
 printf("\ncontains mixed letters = ");
 ECHO;
 
 }
 
%%
 
 
int yywrap(){}
int main()
{
 yylex();
}