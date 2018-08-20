instance creation
queryService: aQuestion
	"I query the CoreNLP service with a given question and return a response"
	| aResponse aJson |

	aResponse := ZnClient new
		post: 'http://localhost:9000/?properties={"annotators": "tokenize,ssplit,pos,depparse,truecase,lemma,parse", "outputFormat": "json"}'
		contents: aQuestion.
	
	aJson := NeoJSONReader fromString: aResponse.
	
	^ self
		fromJson: aJson
		for: aQuestion