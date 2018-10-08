api - response
tokens
	<return: #NlpCoreResponseTokens>

	^ (self json at: 'sentences')
			ifEmpty: [ McCoreResponseTokens new ]
			ifNotEmpty: [ :theSentences | ((theSentences at: 1) at: 'tokens')
				collect: [ :aDictionary | McCoreResponseToken fromDictionary: aDictionary ]
				as: McCoreResponseTokens ]