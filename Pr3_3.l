%{

#include<stdio.h>
int count_v=0;
int count_c=0;
%}
%option noyywrap

%%

[aeiou] {count_v++;}
[b-zB-Z!e!i!o!u] {count_c++;}
"\n" {printf("%d are vowal and %d are consonant",count_v,count_c); count_v=0; count_c=0;}
. ;

%%

int main(){
printf("Enter String");
yylex();
return 0;
}
