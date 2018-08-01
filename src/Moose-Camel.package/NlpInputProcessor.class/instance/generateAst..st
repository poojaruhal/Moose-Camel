api - processing
generateAst: aQueryString
	| aParsedResponse |
	
	aParsedResponse := self parsedApiResponse: aQueryString. 
	
	^ self astFrom: aParsedResponse