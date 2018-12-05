%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "zipParser.tab.h"
%}

%option noyywrap

%%

[A-Za-z0-9]+		{ yylval.str = strdup(yytext); return TEXT; }
[0-9]+			{ yylval.i = atio(yytext); return LONG; }
-?[0-9]+\.[0-9]+	{ yylval.d = atof(yytext); return DOUBLE; }
,	                { return SEPARATOR; }
[ \t\n]			;

%%

int main(int argc, char** argv){
        yylex();
        return 0;
}
                                                              24,1          Bot

