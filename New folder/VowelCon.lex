/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count = 0;
int number=0;
%}
/*** Rule Section has three rules, first rule
matches with capital letters, second rule
matches with any character except newline and
third rule does not take input after the enter***/
%%
[A|E|I|O|U] 	{printf("%s Vowel \n", yytext);
		count++;}
[a|e|i|o|u] {printf("%s Vowel \n", yytext);
		count++;}
. 		{printf("%s Consonant  \n", yytext);
number++; }
\n		{return 0;}
%%
/*** Code Section prints the number of
capital letter present in the given input***/
int yywrap(){}
int main(){ 
/* Explanation:
 yywrap() - wraps the above rule section
 yylex() - this is the main flex function
 which runs the Rule Section
 yytext is the text in the buffer*/
 
printf("Enter a String: ");
yylex();
printf("\nNumber of Vowel in the given input : %d\n", count);
printf("\nNumber of Consonant in the given input : %d\n", number);
return 0;
} 