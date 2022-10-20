%{
#include "y.tab.h"
%}

%%
[1]	{return O;}
[0]	{return Z;}
[\n]	{return NL;}
.	{return yytext[0];}
%%