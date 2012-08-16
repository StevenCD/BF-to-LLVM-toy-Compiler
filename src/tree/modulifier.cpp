#include "tree/tree.h"
#include "tree/modulifier.h"
#include <llvm/LLVMContext.h>
#include <llvm/Module.h>
#include <llvm/InlineAsm.h>
#include <llvm/Support/IRBuilder.h>

#include <vector>
#include <iostream>

using namespace llvm;


void Modulifier::visit(tree::Modifier *m)
{
	ConstantInt* zero =
		ConstantInt::get(Type::getInt16Ty(module->getContext()), 0);
	ConstantInt* one =
		ConstantInt::get(Type::getInt16Ty(module->getContext()), 1);

	LoadInst* load = builder->CreateLoad(pntr, "pntr");
	//Value* load64 = builder->CreateSExt(load, Type::getInt64Ty(module->getContext()), "pntr");
	std::vector<Value*> idxs;
	idxs.push_back(zero);
	idxs.push_back(load/*64*/);
	Value* address = builder->CreateInBoundsGEP(mem, idxs, "address");
	LoadInst* cell = builder->CreateLoad(address, "cell");
	Value* cell_mod;
	switch(m->command)
	{
		case '+': cell_mod = builder->CreateAdd(cell, one, "cell");
		break;
		case '-': cell_mod = builder->CreateSub(cell, one, "cell");
	}
	builder->CreateStore(cell_mod, address);
}

void Modulifier::visit(tree::Selector *s)
{
	ConstantInt* one =
		ConstantInt::get(Type::getInt16Ty(module->getContext()), 1);
	LoadInst* load = builder->CreateLoad(pntr, "pntr");
	Value* load_mod;
	switch(s->command)
	{
		case '>': load_mod = builder->CreateAdd(load, one, "pntr");
		break;
		case '<': load_mod = builder->CreateSub(load, one, "pntr");
	}
	builder->CreateStore(load_mod, pntr);
}

void Modulifier::visit(tree::IO *i)
{
	ConstantInt* zero =
		ConstantInt::get(Type::getInt16Ty(module->getContext()), 0);

	LoadInst* load = builder->CreateLoad(pntr, "pntr");
	//Value* load64 = builder->CreateSExt(load, Type::getInt64Ty(module->getContext()), "pntr");
	std::vector<Value*> idxs;
	idxs.push_back(zero);
	idxs.push_back(load/*64*/);
	Value* address = builder->CreateInBoundsGEP(mem, idxs, "address");
	switch(i->command)
	{
		case '.':
		{
			LoadInst* cell = builder->CreateLoad(address, "cell");
			//Value* cell32 = builder->CreateSExt(cell, Type::getInt32Ty(module->getContext()), "cell");
			/*CallInst* call = */builder->CreateCall(
				module->getFunction("putchar"), cell/*32*/);
		}
		break;
		case ',':
		{
			CallInst* input = builder->CreateCall(
				module->getFunction("getchar"), "input");
			/*StoreInst* store = */builder->CreateStore(input, address);
		}
	}
}

void Modulifier::visit(tree::Block *b)
{
	BasicBlock *block = BasicBlock::Create(
		module->getContext(), "block", module->getFunction("main"));
	builder->CreateBr(block);
	builder->SetInsertPoint(block);

	for(std::vector<tree::Node*>::iterator i = b->bfs.begin(),
			end = b->bfs.end();
		i != end; ++i)
		(*i)->visit(this);
}

void Modulifier::visit(tree::Loop *l)
{
	BasicBlock *test = BasicBlock::Create(
		module->getContext(), "test", module->getFunction("main"));
	BasicBlock *test_true = BasicBlock::Create(
		module->getContext(), "true", module->getFunction("main"));
	BasicBlock *test_false = BasicBlock::Create(
		module->getContext(), "false", module->getFunction("main"));

	builder->CreateBr(test);
	builder->SetInsertPoint(test);

	LoadInst* load = builder->CreateLoad(pntr, "pntr");
	std::vector<Value*> idxs;
	idxs.push_back(builder->getInt16(0));
	idxs.push_back(load);
	Value* address = builder->CreateInBoundsGEP(mem, idxs, "address");
	LoadInst* cell = builder->CreateLoad(address, "cell");
	Value* cmp = builder->CreateICmpNE(cell, builder->getInt16(0), "cmp");
	builder->CreateCondBr(cmp, test_true, test_false);

	builder->SetInsertPoint(test_true);
	l->block->visit(this);
	builder->CreateBr(test);

	builder->SetInsertPoint(test_false);
}

llvm::Module* Modulifier::modulify(tree::Block *b)
{
	module = new Module("brainfuck", getGlobalContext());
	builder = new IRBuilder<>(getGlobalContext());

	FunctionType* main_ty = FunctionType::get(
		Type::getVoidTy(module->getContext()), false);
	/*Function* mainFunction = */Function::Create(
		main_ty, GlobalValue::ExternalLinkage, "main", module);
	
	std::vector<Type*> putchar_args;
	putchar_args.push_back(IntegerType::getInt16Ty(module->getContext()));
	FunctionType* putchar_ty = FunctionType::get(
		Type::getVoidTy(module->getContext()),
		putchar_args,
		false);
	/*Function* putcharFunc = */Function::Create(
		putchar_ty, GlobalValue::ExternalLinkage, "putchar", module);
	
	Value* putchar_arg = module->getFunction("putchar")->arg_begin()++;
	putchar_arg->setName("putchar_arg");
	
	BasicBlock* putchar_block = BasicBlock::Create(
		module->getContext(), "", module->getFunction("putchar"));
	std::vector<Type*> putchar_asm_args;
	putchar_asm_args.push_back(IntegerType::getInt16Ty(module->getContext()));
	InlineAsm* putchar_asm = InlineAsm::get(
		FunctionType::get(
			Type::getVoidTy(module->getContext()),
			putchar_asm_args,
			false),
		"set [i], $0;\n\tadd [i], 0xf000\n\tadd i, 0x1",
		"r",
		true);
	builder->SetInsertPoint(putchar_block);
	builder->CreateCall(putchar_asm, putchar_arg);
	builder->CreateRetVoid();


	FunctionType* getchar_ty = FunctionType::get(
		IntegerType::getInt16Ty(module->getContext()),
		false);
	/*Function* getcharFunc = */Function::Create(
		getchar_ty, GlobalValue::ExternalLinkage, "getchar", module);

	BasicBlock* entry_block = BasicBlock::Create(
		module->getContext(), "entry", module->getFunction("main"));
	builder->SetInsertPoint(entry_block);

	mem = new AllocaInst(
		ArrayType::get(Type::getInt16Ty(module->getContext()), 0x7fff),
		"mem", entry_block);
	pntr = new AllocaInst(
		Type::getInt16Ty(module->getContext()), "pntr", entry_block);

	ConstantInt* zero =
		ConstantInt::get(Type::getInt16Ty(module->getContext()), 0);
	builder->CreateStore(zero, pntr);

	InlineAsm* monitor_asm = InlineAsm::get(
		FunctionType::get(
			Type::getVoidTy(module->getContext()),
			false),
		"set i, 0x4000\n\tset a, 0\n\tset b, 0x4000\n\thwi 0",
		"",
		true);
	builder->CreateCall(monitor_asm);

	visit(b);

	BasicBlock* end_block = BasicBlock::Create(
		module->getContext(), "end", module->getFunction("main"));
	builder->CreateBr(end_block);
	builder->SetInsertPoint(end_block);
	builder->CreateRetVoid();
	return module;
}
