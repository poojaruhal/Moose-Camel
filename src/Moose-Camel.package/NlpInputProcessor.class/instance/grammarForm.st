gt-examples
grammarForm
	<gtExample>
	| grammarForm |
	
	grammarForm := self grammarFormOf: self developerQuestion.

	self assert: grammarForm asArray equals: #(VBN NN).
	
	^ grammarForm