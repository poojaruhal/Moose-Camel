private
parseFrom: aJsonOutput
	^ (aJsonOutput at: 'sentences')
			ifEmpty: [ #() ]
			ifNotEmpty: [ :theSentences | (theSentences at: 1) at: 'parse' ]