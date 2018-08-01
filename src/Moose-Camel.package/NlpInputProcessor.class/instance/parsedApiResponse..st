api - processing
parsedApiResponse: aQueryString
	| aResponse  |

	aResponse := ZnClient new
		post: 'http://localhost:9000/?properties={"annotators": "tokenize,ssplit,pos,depparse,truecase,lemma,parse", "outputFormat": "json"}'
		contents: aQueryString.
	
	 ^ NeoJSONReader fromString: aResponse.