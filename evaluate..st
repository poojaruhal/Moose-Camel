Nlp
evaluate: nlquery
	"comment stating purpose of message"
	| nlResponse tokens outputQuery |
	self initialize.
	self set_nlpQuery: nlquery.
	nlResponse := self collectCoreNlpResponse.
	tokens := self getTokens: nlResponse.
	self collectNouns: tokens.
	outputQuery := self createQuery.
	^ outputQuery.
	