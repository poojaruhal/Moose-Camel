Nlp
collectCoreNlpResponse
	"send Natural language query to coreNLP Api, collect response"

	| response |
	response := ZnClient new
		post:
			'http://localhost:9000/?properties={"annotators": "tokenize,ssplit,pos,depparse", "outputFormat": "json"}'
		contents: self get_nlpQuery.
		^ NeoJSONReader fromString: response.