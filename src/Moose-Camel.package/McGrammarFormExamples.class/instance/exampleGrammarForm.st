gt-examples
exampleGrammarForm
	<gtExample>
	<description:'grammar form of other developer question'>
	| grammarForm |
	
	grammarForm := McGrammarForm new.
	grammarForm addNode: (McaPastParticiple new word: 'deprecated').
	grammarForm addNode: (McaSingularNoun new word: 'method').
	
	^ grammarForm