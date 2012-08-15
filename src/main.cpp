#include "tree/tree.h"
#include "tree/modulifier.h"
#include "tree/pprint.h"
#include <iostream>
#include <vector>
#include <llvm/PassManager.h>
#include <llvm/Assembly/PrintModulePass.h>
#include <llvm/Support/FormattedStream.h>
#include <llvm/Analysis/Verifier.h>
#include <llvm/ExecutionEngine/ExecutionEngine.h>
#include <llvm/ExecutionEngine/GenericValue.h>
#include <llvm/ExecutionEngine/JIT.h>
#include <llvm/Support/TargetSelect.h>

extern int yyparse();
extern tree::Block *root;

int main(int argc, char *argv[])
{
	yyparse();
	if(argc > 1)
	{
		PPrinter p;
		std::cout << p.pprint(root) << std::endl;
		return 0;
	}
	Modulifier m;
	llvm::Module* mod = m.modulify(root);
	verifyModule(*mod);

	llvm::PassManager pm;
	pm.add(llvm::createPrintModulePass(&llvm::outs()));
	pm.run(*mod);
}
