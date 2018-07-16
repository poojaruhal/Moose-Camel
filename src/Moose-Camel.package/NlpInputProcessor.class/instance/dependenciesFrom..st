private
dependenciesFrom: aJsonOutput
	"get constituency parse out of sentence"

	^ ((aJsonOutput at: 'sentences') at: 1) at: 'basicDependencies'