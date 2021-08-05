%{
 
 int count1 = 0;
 int count2 = 0;

 
%}
 
%x	one two count
	
%%
a     {ECHO;BEGIN one; count1++}
<one>\n         {printf(" Enter the ending keyword ");ECHO;BEGIN two;}
<two>b         { ECHO;count2++;}


	
%%
 
 {% if count1<4 
       printf("Accepted");

 %}
int yywrap(){}
int main()
{
 yylex();
}