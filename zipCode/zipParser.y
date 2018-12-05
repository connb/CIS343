%{
%}

union { long i; double d; char* str };

%token SEPARATOR
%token TEST
%token DOUBLE
%token LONG

%type<str> TEXT
%type<d> DOUBLE
%type<i> LONG

%start zipcode_list

%%

zipcode_list



