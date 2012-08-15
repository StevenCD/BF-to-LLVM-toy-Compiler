#ifndef tree_h
#define tree_h 1

#include<vector>

namespace tree
{
	class Visitor;

	class Node
	{
		public:
		virtual void visit(class Visitor *v) = 0;
	};

	class Command : public Node
	{
		public:
		char command;

		virtual void visit(Visitor *v) = 0;
	};

	class Modifier : public Command
	{
		public:

		Modifier(char c)
		{
			command = c;
		}

		void visit(Visitor *v);
	};

	class Selector : public Command
	{
		public:

		Selector(char c)
		{
			command = c;
		}

		void visit(Visitor *v);
	};

	class IO : public Command
	{
		public:

		IO(char c)
		{
			command = c;
		}

		void visit(Visitor *v);
	};

	class Block : public Node
	{
		public:
		std::vector<Node*> bfs;

		Block()
		{}

		void add(Node *bf);
		void visit(Visitor *v);
	};

	class Loop : public Node
	{
		public:
		Block *block;

		Loop(Block *b)
		{
			block = b;
		}

		void visit(Visitor *v);
	};

	class Visitor
	{
		public:
		virtual void visit(Modifier *m) = 0;
		virtual void visit(Selector *s) = 0;
		virtual void visit(IO *i) = 0;
		virtual void visit(Block *b) = 0;
		virtual void visit(Loop *l) = 0;
	};
}
#endif
