Nlp
extractGrammarForm:tokens
	"extract grammer form, only noun and verbs"

	| postag aWord queryGrammarFormString |
	queryGrammarFormString := ''.
	tokens
		do: [ :each | 
			each
				keysDo: [ :key | 
					(key = 'pos')
						ifTrue: [ postag := each at: key.
							((postag beginsWith: 'VB') or: (postag beginsWith:  'NN'))
							ifTrue: [
								aWord := each at: 'word'.
								queryGrammarFormString :=   queryGrammarFormString,'>',postag.
								queryFormDictionary at:postag put: aWord.]
						ifFalse: [ Transcript show:(each at: 'word');cr. ] 
							 ] ] ].
				^ queryGrammarFormString.