Nlp
getTokens: jsonOutput
	"comment stating purpose of message"

	| tokens |
	tokens := ((jsonOutput at: 'sentences') at: 1) at: 'tokens'.
	^ tokens