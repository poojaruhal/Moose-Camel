Nlp
getBasicDependencies: jsonOutput
	"get constituency parse out of sentence"

	| basicDependencies |
	basicDependencies := ((jsonOutput at: 'sentences') at: 1) at: 'basicDependencies'.
	^ basicDependencies