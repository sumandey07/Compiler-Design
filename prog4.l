%{
#include <stdio.h>
#include <string.h>
int longest=0;
int counter=0;
char longstr[500];
%}

%%
[a-zA-Z]+ {
if(yyleng>longest){
	longest =yyleng;
	counter=yyleng;
	strcpy(longstr,yytext);
}
}
%%

int main(void)
{
yylex();
printf("The longest string is: %s\n",longstr);
printf("The length of the longest string is %d\n",counter);
}