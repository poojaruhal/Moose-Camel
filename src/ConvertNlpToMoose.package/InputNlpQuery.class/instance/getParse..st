Nlp
getParse: jsonOutput
	"get constituency parse out of sentence"

	| parseOutput |
	parseOutput := ((jsonOutput at: 'sentences') at: 1) at: 'parse'.
	^ parseOutput