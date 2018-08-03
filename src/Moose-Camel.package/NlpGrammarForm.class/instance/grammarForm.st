gt-examples
grammarForm
	<gtExample>
	| grammarForm |
	
	grammarForm := NlpGrammarForm fromAst: (NlpInputProcessor new process: (NlpInputProcessor new developerQuestion)).
	
	self assert: grammarForm equals: (self predefinedGrammarFormOfDeveloperQuestion).
	
	^ grammarForm