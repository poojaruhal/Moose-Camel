api - response
tokens
	<return: #NlpCoreResponseTokens>

	^ (self json at: 'sentences')
			ifEmpty: [ NlpCoreResponseTokens new ]
			ifNotEmpty: [ :theSentences | ((theSentences at: 1) at: 'tokens')
				collect: [ :aDictionary | NlpCoreResponseToken fromDictionary: aDictionary ]
				as: NlpCoreResponseTokens ]