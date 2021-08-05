%{
#include<stdio.h>
%}

%%


[ \t" "]+ printf(" ",yytext);		

. printf("%s",yytext);
	
%%



int yywrap()
{
return 1;
}

int main(void)
{
	printf("Enter a line with white space: ");
yylex();
yylex();
return 0;
}