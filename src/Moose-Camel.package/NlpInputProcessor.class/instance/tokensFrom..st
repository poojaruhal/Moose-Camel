json - processing
tokensFrom: aJsonOutput
	<return: #Collection of: #NlpDictionary>

	^ (aJsonOutput at: 'sentences')
			ifEmpty: [ #() ]
			ifNotEmpty: [ :theSentences | (theSentences at: 1) at: 'tokens' ]