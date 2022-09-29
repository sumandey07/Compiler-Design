%{
#include<stdio.h>
int longest=0;
int longnum[300];
%}

%%
[0-9]+ {
if(yyleng>longest){
	longest=yyleng;
	 
}
}
%%

int main(void){
yylex();
printf("Longest number is %d\n",longnum);
}