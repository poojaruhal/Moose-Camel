Nlp
evaluate: nlquery
	"comment stating purpose of message"
	| nlResponse tokens outputQuery |
	"self initialize."
	
	self nlQuery: nlquery.
	
	nlResponse := self collectCoreNlpResponse.
	tokens := self getTokens: nlResponse.
	self extractGrammarForm: tokens.
	self processGrammarForm.
	outputQuery := self createQuery.
	^ outputQuery.
	