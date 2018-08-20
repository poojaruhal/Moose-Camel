api - response
parse
	<return: #String>

	^ (self json at: 'sentences')
			ifEmpty: [ '' ]
			ifNotEmpty: [ :theSentences | (theSentences at: 1) at: 'parse' ]