instance creation
fromAst: anAst
	|visitor|

	visitor := NlpNodeGrammarFormVisitor new.
	anAst accept: visitor.
	^ visitor grammarForm