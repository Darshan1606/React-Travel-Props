%{

#include<stdio.h>
int line_count=0;
int word_count=0;
int char_count=0;

%}
%option noyywrap

%%

^[ ]+ ;
[ ]$ ;
[ ]* {word_count++;}
"\n" {line_count++;}
. {char_count++;}

%%

int main(){
yylex();
printf("NUmber of lines %d\n Number of word %d\n Number of char%d",line_count,word_count+line_count,char_count);
return 0;
}
