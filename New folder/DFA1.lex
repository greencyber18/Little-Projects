%{ 
%} 
  
%s A B
  
%% 
<INITIAL>0 BEGIN INITIAL; 
<INITIAL>1 BEGIN A; 

<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}
<A>0 BEGIN INITIAL; 
<A>1 BEGIN B; 
<A>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<B>0 BEGIN INITIAL; 
<B>1 BEGIN B; 

<B>\n BEGIN INITIAL;{printf(" Accepted\n");}
%% 

int yywrap()
{
return 1;
}

void main() 
{ 
printf("Enter String\n"); 
    yylex(); 

} 