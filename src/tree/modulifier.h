#ifndef modulifier_h
#define modulifier_h 1

#include "tree/tree.h"
#include <llvm/Module.h>
#include <llvm/Support/IRBuilder.h>

class Modulifier : public tree::Visitor
{
	llvm::Module *module;
	llvm::IRBuilder<> *builder;
	llvm::AllocaInst* mem;
	llvm::AllocaInst* pntr;

	public:

	void visit(tree::Modifier *m);
	void visit(tree::Selector *s);
	void visit(tree::IO *i);
	void visit(tree::Block *b);
	void visit(tree::Loop *l);
	llvm::Module* modulify(tree::Block *b);
};
#endif
