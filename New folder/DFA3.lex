%{ 
%} 
  
%s  B C D E F
  
%% 
<INITIAL>1 BEGIN INITIAL; 
 
<INITIAL>0 BEGIN B; 

<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<B>1 BEGIN B; 
<B>0 BEGIN C; 
<B>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<C>1 BEGIN D; 
<C>0 BEGIN F; 

<C>\n BEGIN INITIAL;{printf("not Accepted\n");}

<D>1 BEGIN E; 
<D>0 BEGIN F; 

<D>\n BEGIN INITIAL;{printf("not Accepted\n");}

<E>1 BEGIN E; 
<E>0 BEGIN F; 

<E>\n BEGIN INITIAL;{printf(" Accepted\n");}

<F>1 BEGIN F; 
<F>0 BEGIN F; 

<F>\n BEGIN INITIAL;{printf(" Dead\n");}
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