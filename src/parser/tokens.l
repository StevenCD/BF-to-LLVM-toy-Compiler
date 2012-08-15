%{
	#include "tree/tree.h"
	#include "tokens.tab.h"
%}
%option warn nodefault
%option yylineno
%option noyywrap
%option nounput noinput

%%

"+"             yylval.c = '+'; return MODIFIER;
"-"             yylval.c = '-'; return MODIFIER;
">"             yylval.c = '>'; return SELECTOR;
"<"             yylval.c = '<'; return SELECTOR;
"."             yylval.c = '.'; return IO;
","             yylval.c = ','; return IO;
"["             return LOOP;
"]"             return END_LOOP;
.|\n         ; /* ignore everyting else */
%%
