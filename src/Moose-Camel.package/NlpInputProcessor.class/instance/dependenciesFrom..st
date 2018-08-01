json - processing
dependenciesFrom: aJsonOutput
	"get constituency parse out of sentence"
	^ (aJsonOutput at: 'sentences')
			ifEmpty: [ #() ]
			ifNotEmpty: [ :theSentences | (theSentences at: 1) at: 'basicDependencies' ]