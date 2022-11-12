%{

#include<stdio.h>
%}
%option noyywrap

%%

[a-zA-Z_]* {printf("'%s' is Word\n",yytext);}
[0-9]+ {printf("'%s' is number\n",yytext);}
" " ;
. {printf("'%s' is other\n",yytext);}

%%

int main(){
printf("Enter String");
yylex();
return 0;
}
