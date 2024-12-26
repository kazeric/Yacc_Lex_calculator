%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(const char *s);
int yylex();

%}

%token NUMBER
%token PLUS MINUS

%%

calculation:
    expression  { printf("Result: %d\n", $1); }
    | '&'
  ;

expression:
    expression PLUS term { $$ = $1 + $3; }
  | expression MINUS term { $$ = $1 - $3;}
  | term { $$ = $1;}
  ;

term:
    NUMBER { $$ = $1; }
  ;

%%

int main() {
    printf("Enter expressions to calculate (e.g., 3 + 5 - 2):\n");
    return yyparse();
}

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
