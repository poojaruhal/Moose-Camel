examples - instance creation
responseFromParsedJson
	<gtExample>
	| aResponse |
	
	aResponse := NlpCoreResponse
		fromJson: self parsedJsonFromString
		for: self developerQuestion.

	self assert: aResponse question equals: 'What are the deprecated class'.
	
	^ aResponse