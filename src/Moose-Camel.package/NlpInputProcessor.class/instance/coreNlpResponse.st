gt-examples
coreNlpResponse
	<gtExample>
	| apiResponse aQuestion dummyResponse|
	
	aQuestion := self developerQuestion.	
	dummyResponse := self coreNlpApiDummyResponse.
	apiResponse := self parsedApiResponse: aQuestion.
	self assert: apiResponse equals: dummyResponse.
	
	^ apiResponse.