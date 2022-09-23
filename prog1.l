%{
#include <stdio.h>
%}

digit [0-9]

%%

{digit}*[02468]$ { printf("Even"); }
{digit}*[13579]$ { printf("Odd"); }
. { printf("Wrong Input"); }

%%

int main() {
yylex();
}