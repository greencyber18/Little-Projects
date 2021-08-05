%%
[+-]?[0-9]+"."[0-9]+? {printf("Float \n");}
[+-]?[0-9]+ {printf(" integer\n");}
.	   	   {printf("Not a number\n");}
end		   {return 0;}
%%
int yywrap(){}
int main()
{
printf("Float and integer recognition\n");
yylex();
return 0;
}