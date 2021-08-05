#include<stdio.h>
#include<string.h>
void main()
{
    char nt[10],t[5],p[5][5],first[5][5];
    int i=0,j=0,not=0,nont=0,k=0,f=0;

    printf("\nEnter the no. of Non-terminals in the grammer:");
    scanf("%d",&nont);
    printf("\nEnter the Non-terminals in the grammer:\n");
    for(i=0;i<nont;i++)
    {
        scanf("\n%c",&nt[i]);
    }

    printf("\nEnter the no. of Terminals in the grammer: ( Enter e for absiline ) ");
    scanf("%d",&not);

    printf("\nEnter the Terminals in the grammer:\n");
    for(i=0;i<not;i++)
    {
        scanf("\n%c",&t[i]);
    }

    //initializing production and first
    //p[0][0] = nt[0] = E
    //p[1][0] = nt[1] = R
    //p[2][0] = nt[2] = T

    //for every row first index is used for nonTerminal and 1 to max for terminal
    //for example p[0][0] = {E}
    //for example first[0][0] = {E}
    for(i=0;i<nont;i++)
    {
        p[i][0]=nt[i];
        first[i][0]=nt[i];
    }

    //taking input for production
    printf("\nEnter the productions : ");
    for(i=0;i<nont;i++)
    {
        //for clearing the input buffer
        fflush(stdin);
        printf("\nEnter the production for %c ( End the production with '$' sign ): ",p[i][0]);
        for(j=1;p[i][j-1]!='$';j++)
        {
            scanf("%c",&p[i][j]);
        }
    }

    //printing production
    for(i=0;i<nont;i++)
    {
        printf("\nThe production for %c -> ",p[i][0]);
        for(j=1;p[i][j]!='$';j++)
        {
            printf("%c",p[i][j]);
        }
    }

    //for all number of terminal
    for(i=0;i<nont;i++)
    {   //finished checking
        f=0;

        //for each production starting from terminal
        for(j=1;p[i][j]!='$';j++)
        {
            //for all terminal in a production
            for(k=0;k<not;k++)
            {
                //first is found no need to check further.
                if(f==1)
                break;
                //if it is a terminal
                if(p[i][j]==t[k])
                {
                    first[i][j]=t[k]; // first[0]={E,    };
                    first[i][j+1]='$';
                    f=1;
                    break;
                }
                //if it is a non terminal
                else if(p[i][j]==nt[k])
                {   //update the first with first of k production
                    first[i][j]=first[k][j];

                    //if the new terminal is epsilon
                    if(first[i][j]=='e')
                    continue;//skip the loop, go to check next terminal
                    first[i][j+1]='$';//end of first checking
                    f=1;// first is found
                    break;
                }
            }
        }
    }

    for(i=0;i<nont;i++)
    {
        printf("\n\nThe first of %c -> ",first[i][0]);
        for(j=1;first[i][j]!='$';j++)
        {
            printf("%c\t",first[i][j]);
        }
    }

return 0;
}
