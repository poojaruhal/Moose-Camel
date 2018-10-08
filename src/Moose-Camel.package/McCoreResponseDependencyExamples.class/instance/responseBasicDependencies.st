examples - response
responseBasicDependencies
	<gtExample>
	| aResponse theBasicDependencies |
	
	aResponse := McCoreResponseExamples new responseFromParsedJson.
	theBasicDependencies := aResponse basicDependencies.
	self assert: theBasicDependencies size equals: 5.

	^ theBasicDependencies