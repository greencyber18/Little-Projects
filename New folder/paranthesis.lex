%{
int paranthesis=0,p;
%}
 
 
%%
 
 
"(" {paranthesis++; 
}
 
")" { paranthesis--;
}
 
[\n] {
 if(paranthesis==0)
 printf("The statemnet has no missing paranthesis\n",p);
 else
 printf("missing paranthesis\n",p);
 if(paranthesis>0)
 
 printf("The statemnet has either extra ( paranthesis or a missing ) paranthesis\n");
 
 else if(paranthesis<0)
 
 printf("The statemnet has either extra ) paranthesis or a missing ( paranthesis\n"); 
 
 paranthesis=0;

}
 
%%
 
int yywrap()
{
return 1;
}

int main(void)
{
printf("Enter Paranthesis: \n"); 
   
yylex();
return 0;
}