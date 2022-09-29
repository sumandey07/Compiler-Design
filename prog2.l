%{
#include<stdio.h>
int a=0,b=0,c=0,d=0;
%}

digit [0-9]

%%

[^-?\d+(,\d+)*(\.\d+(e\d+)?)?]$ { printf("Decimal"); }
.	{ printf("Wrong Input"); }

%%

int main(void){ 
yylex(); 
}