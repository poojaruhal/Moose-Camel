as yet unclassified
compareGrammarForm
	<gtExample>
	| grammarForm1 grammarForm2 |
	
	grammarForm1 := self class fromAst: (NlpInputProcessor new process: 'The hunter killed the lion').
	grammarForm2 := self class fromAst: (NlpInputProcessor new process: 'The lion was killed by the hunter').
	self compareGrammarForm: grammarForm1  With:grammarForm2 