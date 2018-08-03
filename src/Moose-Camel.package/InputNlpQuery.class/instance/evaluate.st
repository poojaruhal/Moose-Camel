public access
evaluate
	"comment stating purpose of message"
	| tokens outputQuery queryLemmaForm |
	"self initialize."
	
	tokens := NlpInputProcessor new tokens.
	
	queryLemmaForm := self extractLemmaForm: tokens.
	
	self processLemmaForm: queryLemmaForm.
	outputQuery := self createQuery.
	^ outputQuery.
	