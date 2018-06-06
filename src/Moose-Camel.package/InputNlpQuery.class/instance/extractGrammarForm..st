Nlp
extractGrammarForm: theTokens
	"extract grammer form, only noun and verbs"
	^ self
		extractForm: [ :aToken | self findGrammarOfaWord: aToken ]
		from: theTokens