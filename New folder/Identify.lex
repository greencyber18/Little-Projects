%{
int sepCount = 0, OpCount=0,identCount=0 ,InTegerCount=0 , keyCount=0;
%}

%%

[i][f] 	{printf("%s Keyword\n", yytext);
		keyCount++;}

"("	{printf("%s seperator\n", yytext);
		sepCount++;}
";"	{printf("%s seperator\n", yytext);
		sepCount++;}

[a-zA-Z][a-zA-Z0-9_]*  {printf("%s Identifier\n", yytext);
		identCount++;}
"+"|"-"|"*"|"/"|"=="|"="  {printf("%s Operator\n", yytext);
		OpCount++;}

[0-9]+  {printf("%s InTeger\n", yytext);
		InTegerCount++;}
		
")" 		{printf("%s seperator\n", yytext);
		sepCount++;}
\n		{return 0;}

%%
int yywrap(){
	
}
int main() { 

 
printf("Enter a String: ");
yylex();
printf("\nNumber of Seperator in the given input : %d\n", sepCount);
printf("\nNumber of Identifier in the given input : %d\n", identCount);
printf("\nNumber of Operator in the given input : %d\n", OpCount);
printf("\nNumber of InTeger in the given input : %d\n", InTegerCount);
printf("\nNumber of Keyword in the given input : %d\n", keyCount);


return 0;
}