#include<stdio.h>
#include<math.h>

int main(){
float m1,m2,k,g,gforce,g2,g3,g4,gpower,gbase=10,gexponent=-11;
gpower= 1.0/(pow(gbase,gexponent));
g= 6.67*gpower;
printf("Enter the mass of object-1 (kg): ");
scanf("%f", & m1);
printf("Enter the mass of object-2 (kg): ");
scanf("%f", & m2);
printf("Enter the distance between the centers of masses (meter): ");
scanf("%f", &k);
gforce= (g*m1*m2);
g2=k*k;
g3=gforce/g2;
g4=g3/100000000000000000000;
printf("The resultant Gravitational Force is: %2.2f Newton(s)", g4);
return 0;

}
