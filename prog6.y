%{
#include<stdio.h> 
#include<stdlib.h>
%}

%token O Z NL
%start st

%%
st : s NL	{printf("valid seq\n"); exit(0);};
s : O Z s1 ;
s1 : Z s1 | O s1 | ;
%%

int yyerror(char *msg)
{
	printf("Invalid seq\n"); 
	exit(0);
}

int main(){
	yyparse();
	return 0;
}