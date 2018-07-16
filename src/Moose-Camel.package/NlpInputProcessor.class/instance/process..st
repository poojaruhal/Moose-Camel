api - processing
process: aQueryString
	| aResponse aParsedResponse |

	aResponse := ZnClient new
		post: 'http://localhost:9000/?properties={"annotators": "tokenize,ssplit,pos,depparse,truecase,lemma,parse", "outputFormat": "json"}'
		contents: aQueryString.
	
	aParsedResponse := NeoJSONReader fromString: aResponse.
	
	^ self astFrom: aParsedResponse