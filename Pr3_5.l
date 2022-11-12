%{

#include<stdio.h>
int flag=0;

%}
%option noyywrap
%%

^[ ]*\/\/.* {printf("%s",(yytext));}
^[ ]*\/\* {flag=1; printf("%s",yytext);}
$\*\\  {flag=0;}
"\n" {printf("\n");}
. {if(flag) printf("%s",yytext);};

%%


int main(){
yylex();
return 0;
}
