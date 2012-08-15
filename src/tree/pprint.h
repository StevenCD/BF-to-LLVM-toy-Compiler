#ifndef pprint_h
#define pprint_h 1

#include <string>
#include "tree/tree.h"

class PPrinter : public tree::Visitor
{
	int indent;
	char prev;
	int row_count;
	std::string str;
	void newline();

	public:

	void visit(tree::Command *c);
	void visit(tree::Modifier *m);
	void visit(tree::Selector *s);
	void visit(tree::IO *i);
	void visit(tree::Block *b);
	void visit(tree::Loop *l);
	std::string pprint(tree::Node *n);
};
#endif
