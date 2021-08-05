/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{

%}
/*** Rule Section has three rules, first rule
matches with capital letters, second rule
matches with any character except newline and
third rule does not take input after the enter***/
%%
 xx(.|.)yy   {printf("%s valid string ",yytext );
             
		}

 
        
		
.  { printf("%s is not valid string ",yytext); 
} 
\n		{return 0;}
%%
/*** Code Section prints tshe number of
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

return 0;
} 