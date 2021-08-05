
%{
    #include <math.h>
%}
%x expect

%%
expect-float BEGIN(expect);
<expect>[0-9]+.[0-9]+      {
                printf( "found a float, = %f\n",
                        atof( yytext ) );
                }
<expect>\n           {
                /* that's the end of the line, so
                 * we need another "expect-number"
                 * before we'll recognize any more
                 * numbers
                 */
                BEGIN(INITIAL);
                }

[0-9]+      {
                printf( "found an integer, = %d\n",
                        atoi( yytext ) );
                }

"."         printf( "found a dot\n" );
 
%%
int yywrap(){}
int main()
{
 yylex();
}