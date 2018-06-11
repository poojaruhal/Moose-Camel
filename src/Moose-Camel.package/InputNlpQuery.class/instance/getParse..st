Nlp
getParse: jsonOutput
	"get constituency parse out of sentence"

	| tokens |
	tokens := ((jsonOutput at: 'sentences') at: 1) at: 'parse'.
	^ tokens