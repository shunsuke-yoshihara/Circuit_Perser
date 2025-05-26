%{
#include "y.tab.h"
#include <string.h>
int lineno=1;
%}

%%
[ \t\r]+         ;
\n               { lineno++; }
"//".*           ;

"input"          { return INPUT; }
"output"         { return OUTPUT; }
"wire"           { return WIRE; }
"("              { return '('; }
")"              { return ')'; }
","              { return ','; }
";"              { return ';'; }

"\."[A-Za-z_][A-Za-z0-9_]* {
    yylval.sval = strdup(yytext);
    return DOTNAME;
}



[A-Za-z_][A-Za-z0-9_]*(\[[0-9]+\])?   {
    yylval.sval = strdup(yytext);
    return NAME;
}




. {
    printf("Unknown token: %s at line %d\n", yytext, lineno);
    return 1;
}
%%
int yywrap(void){ return 1; }

