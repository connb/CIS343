%{
	#include <stdio.h>
	#include <stdlib.h>
		#define 	INTEGER		254
		#define		FLOAT 		253
		#define		COMPLEX		252
		#define		COMMENT		251
		#define		VARIABLE	250
%}

%%

[0-9]+				{ printf("INTEGER\n");}
[0-9]+\.[0-9]+			{ printf("FLOAT\n");}
\([0-9]+\*\i\+[0-9]+\*\j\)	{ printf("COMPLEX\n");}
\/\/*.*\n			{ printf("COMMENT\n");}
[A-Za-z]			{ printf("VARIABLE\n");}

%%

int main(int argc, char** argv){
	yylex();
	return 0;
}
