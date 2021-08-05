%{ 
%} 
  
%s  B C D E F G H I J 
  
%% 
<INITIAL>1 BEGIN D; 
 
<INITIAL>0 BEGIN B; 

<INITIAL>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<B>1 BEGIN E; 
<B>0 BEGIN C; 
<B>\n BEGIN INITIAL; {printf("Not Accepted\n");}

<C>1 BEGIN F; 
<C>0 BEGIN G; 

<C>\n BEGIN INITIAL;{printf("not Accepted\n");}

<D>1 BEGIN H; 
<D>0 BEGIN E; 

<D>\n BEGIN INITIAL;{printf("not Accepted\n");}

<E>1 BEGIN I; 
<E>0 BEGIN F; 

<E>\n BEGIN INITIAL;{printf("Not Accepted\n");}

<F>1 BEGIN J; 
<F>0 BEGIN G; 

<F>\n BEGIN INITIAL;{printf(" Not Accepted\n");}


<H>1 BEGIN H; 
<H>0 BEGIN I; 

<H>\n BEGIN INITIAL;{printf(" Not Accepted\n");}

<I>1 BEGIN I; 
<I>0 BEGIN J; 

<I>\n BEGIN INITIAL;{printf(" Not Accepted\n");}

<J>1 BEGIN J; 
<J>0 BEGIN G; 

<J>\n BEGIN INITIAL;{printf("  Accepted\n");}

<G>1 BEGIN G; 
<G>0 BEGIN G; 

<G>\n BEGIN INITIAL;{printf("  Dead\n");}
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