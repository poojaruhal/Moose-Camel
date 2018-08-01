api - processing
process: aQueryString
	| aParsedResponse |
	
	aParsedResponse := self parsedApiResponse: aQueryString. 
	
	^ self astFrom: aParsedResponse