as yet unclassified
removeStopwordsFrom: aQuestion
	
	
	| aParsedResponse tokens sentenceAfterStopwordsRemoval |
	
	aParsedResponse := self parsedApiResponse: aQuestion. 
	tokens := self tokensFrom: aParsedResponse.
	sentenceAfterStopwordsRemoval := self removeStopwords: tokens.
	
	^  sentenceAfterStopwordsRemoval