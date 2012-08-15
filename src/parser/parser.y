%{
	#include <iostream>
	#include "tree/tree.h"

	extern int yylex();
	tree::Block *root;

	#define YYERROR_VERBOSE
	void yyerror(const char *s) { std::cerr << "ERROR: " << s << std::endl; }
%}

%union
{
	char c;
	tree::Command *cmd;
	tree::Block *block;
	tree::Loop *loop;
}

%token <c> MODIFIER SELECTOR IO
%token LOOP END_LOOP

%type <block> bf
%type <cmd> code
%type <loop> loop

%start prog

%%

prog : bf { root = $1; }
     ;

bf : /* empty */ { $$ = new tree::Block(); }
   | bf code { $1->add($2); }
   | bf loop { $1->add($2); }
   ;

code : MODIFIER { $$ = new tree::Modifier($1); }
     | SELECTOR { $$ = new tree::Selector($1); }
	 | IO { $$ = new tree::IO($1); }
     ;

loop : LOOP bf END_LOOP { $$ = new tree::Loop($2); }
     ;

%%
