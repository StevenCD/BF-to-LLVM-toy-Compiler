#include "tree/tree.h"

void tree::Modifier::visit(Visitor *v)
{
	v->visit(this);
}

void tree::Selector::visit(Visitor *v)
{
	v->visit(this);
}

void tree::IO::visit(Visitor *v)
{
	v->visit(this);
}

void tree::Block::visit(Visitor *v)
{
	v->visit(this);
}

void tree::Block::add(Node *bf)
{
	bfs.push_back(bf);
}

void tree::Loop::visit(Visitor *v)
{
	v->visit(this);
}
