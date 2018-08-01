api - processing
extractGrammarForm: aQuestion
	|aParsedResponse theTokens |
	
	aParsedResponse := self parsedApiResponse: aQuestion.
	theTokens :=self tokensFrom: aParsedResponse.
	
	^ InputNlpQuery new extractGrammarForm: theTokens.