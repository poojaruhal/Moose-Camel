gt-examples
grammarForm
	<gtExample>
	| grammarForm |
	
	grammarForm := self grammarFormOf: (NlpInputProcessor new  developerQuestion).

	self assert: grammarForm asArray equals: #(VBN NN).
	
	^ grammarForm