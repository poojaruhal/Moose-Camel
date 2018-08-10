gt-examples
exampleGrammarFormOfDeveloperQuestion
	<gtExample>
	| grammarForm |
	
	grammarForm := NlpGrammarForm new.
	grammarForm addNode: (NlpPastParticiple new word: 'deprecated').
	grammarForm addNode: (NlpSingularNoun new word: 'class').
	
	^ grammarForm