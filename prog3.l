%{
#include <stdio.h>
int ch = 0, wd = 1, nl = 1;
%}

delim [\t]+

%%

\n { wd++;nl++; }
^{delim} { ch+=yyleng;wd++; }
{delim} { ch+=yyleng; wd++; }
. { ch++; }

%%

int main(void){ 
yylex();
printf("%8d%8d%8d\n", nl, wd, ch);
}
