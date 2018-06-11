api-coreNlp
collectCoreNlpResponse
	"send Natural language query to coreNLP Api, collect response"

	| response |
	response := ZnClient new
		post:
			'http://localhost:9000/?properties={"annotators": "tokenize,ssplit,pos,depparse,truecase,lemma,parse", "outputFormat": "json"}'
		contents: self class query.
		^ NeoJSONReader fromString: response