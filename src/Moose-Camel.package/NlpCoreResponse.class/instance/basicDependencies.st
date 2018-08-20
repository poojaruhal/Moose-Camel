api - response
basicDependencies
	"get constituency parse out of sentence"
	<return: #NlpCoreResponseDependencies>

	^ (((self json at: 'sentences') at: 1) at: 'basicDependencies')
		collect: [ :aDictionary | NlpCoreResponseDependency fromDictionary: aDictionary ]
		as: NlpCoreResponseDependencies