%{

#include<stdio.h>

%}

%option noyywrap
%%

[0-9]* {printf("%s",yytext);}
. ;
"\n" {printf("\n");}

%%

int main(){
yylex();
return 0;
}
