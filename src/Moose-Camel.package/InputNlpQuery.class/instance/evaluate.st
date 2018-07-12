Nlp
evaluate
	"comment stating purpose of message"
	| nlResponse tokens outputQuery queryGrammarForm  queryLemmaForm |
	"self initialize."
	
	nlResponse := self collectCoreNlpResponseDummy.
	tokens := self getTokens: nlResponse.
	
	queryGrammarForm := self extractGrammarForm: tokens.
	queryLemmaForm := self extractLemmaForm: tokens.
	
	self processLemmaForm: queryLemmaForm.
	outputQuery := self createQuery.
	^ outputQuery.
	