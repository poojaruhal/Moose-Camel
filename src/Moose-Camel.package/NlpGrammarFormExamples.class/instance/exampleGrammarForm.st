gt-examples
exampleGrammarForm
	<gtExample>
	<description:'grammar form of other developer question'>
	| grammarForm |
	
	grammarForm := NlpGrammarForm new.
	grammarForm addNode: (NlpPastParticiple new word: 'deprecated').
	grammarForm addNode: (NlpSingularNoun new word: 'method').
	
	^ grammarForm