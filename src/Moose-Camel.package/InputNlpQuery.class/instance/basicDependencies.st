test-examples
basicDependencies
	<gtExample>
	
	| basicDependencies jsonOutput |
	
	 jsonOutput := NlpInputProcessor new coreNlpApiDummyResponse.
	 basicDependencies := self getBasicDependencies: jsonOutput.
	 ^ basicDependencies