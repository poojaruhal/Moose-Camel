test-examples
basicDependencies
	<gtExample>
	
	| basicDependencies jsonOutput |
	
	 jsonOutput := self collectCoreNlpResponseDummy.
	 basicDependencies := self getBasicDependencies: jsonOutput.
	 ^ basicDependencies