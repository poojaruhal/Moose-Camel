api - response
basicDependencies
	"get constituency parse out of sentence"
	<return: #McCoreResponseDependencies>

		^ (self json at: 'sentences')
			ifEmpty: [ McCoreResponseDependencies new ]
			ifNotEmpty: [ :theSentences | ((theSentences at: 1) at: 'basicDependencies')
				collect: [ :aDictionary | McCoreResponseDependency fromDictionary: aDictionary ]
				as: McCoreResponseDependencies ]