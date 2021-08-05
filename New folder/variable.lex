%{
int count = 0;
%}

%%
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("%s is a valid identifier", yytext);
		count++;}

. 		{printf("%s not a valid identifier", yytext);}
\n		{return 0;}
%%

int yywrap(){}
int main(){ 

printf("Enter a String: ");
yylex();
return 0;
} 