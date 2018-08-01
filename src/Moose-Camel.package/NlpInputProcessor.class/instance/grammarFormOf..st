api - processing
grammarFormOf: aQuestion
	"extract grammer form, only noun and verbs"
	
	|aParsedResponse theTokens |
	
	aParsedResponse := self parsedApiResponse: aQuestion.
	theTokens :=self tokensFrom: aParsedResponse.
		
	^ self
		extractForm: [ :aToken | self findGrammarOfaWord: aToken ]
		from: theTokens
	