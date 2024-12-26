%{
#include "y.tab.h"
%}

%%

[0-9]+    { yylval = atoi(yytext); return NUMBER; }
"+"       { return PLUS; }
"-"       { return MINUS; }
[ \t\n]+  { /* Ignore whitespace */ }
&         { return 0; }
.         { return yytext[0]; }

%%

int yywrap() {
    return 1;
}
