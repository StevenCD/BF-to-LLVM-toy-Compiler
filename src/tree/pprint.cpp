#include <iostream>
#include "tree/tree.h"
#include "tree/pprint.h"

void PPrinter::newline()
{
	str.append(1, '\n');
	str.append(indent, ' ');
	row_count = 0;
	prev = '\n';
}

void PPrinter::visit(tree::Modifier *m)
{
	visit((tree::Command*) m);
}

void PPrinter::visit(tree::Selector *s)
{
	visit((tree::Command*) s);
}

void PPrinter::visit(tree::IO *i)
{
	visit((tree::Command*) i);
}

void PPrinter::visit(tree::Command *c)
{
	if(prev == c->command)
	{
		if(row_count < 4)
		{
			row_count++;
		}
		else
		{
			str.append(" ");
			row_count = 0;
		}
	}
	else if((prev == '.' || prev == ',') &&
	        c->command != '.' && c->command != ',') 
	{
		newline();
	}
	else if((c->command == '>' || c->command == '<') &&
	       prev != '>' && prev != '<' && prev != '\n') 
	{
		newline();
	}
	else if(prev != '\n')
	{
		str.append(" ");
	}

	str.append(1, (prev = c->command));
}

void PPrinter::visit(tree::Block *b)
{
	for(int i = 0; i < b->bfs.size(); i++)
		b->bfs[i]->visit(this);
}

void PPrinter::visit(tree::Loop *l)
{
	if(prev != '\n')
		newline();

	str.append(1, '[');
	indent += 2;
	newline();
	
	l->block->visit(this);

	indent -= 2;
	newline();
	str.append(1, ']');
	newline();
}

std::string PPrinter::pprint(tree::Node *n)
{
	indent = 0;
	prev = '\n';
	row_count = 0;
	str = "";
	n->visit(this);
	return str;
}
