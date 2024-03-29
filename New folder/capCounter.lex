/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
int count = 0;
%}
/*** Rule Section has three rules, first rule
matches with capital letters, second rule
matches with any character except newline and
third rule does not take input after the enter***/
%%
[A-Z] 	{printf("%s capital letter\n", yytext);
		count++;}
[a-z] {printf("%s small letter\n", yytext);
		count++;}
. 		{printf("%s not a  letter\n", yytext);}
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
printf("\nNumber of Captial letters in the given input : %d\n", count);
return 0;
} 