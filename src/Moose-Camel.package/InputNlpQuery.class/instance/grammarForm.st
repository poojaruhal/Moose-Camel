test-examples
grammarForm
	<gtExample>
	| tokens grammarForm |
	
	tokens := self tokens.
	grammarForm := self extractGrammarForm: tokens.

	self assert: grammarForm asArray equals: #(VBN NN).

	^ grammarForm