%{

#include<stdio.h>
int line_count=1;
%}
%option noyywrap

%%

^. {printf("%d %s",line_count++,yytext);}
"\n" {printf("\n");}

%%

int main(){
yylex();
return 0;
}
