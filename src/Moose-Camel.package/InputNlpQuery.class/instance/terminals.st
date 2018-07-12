test-examples
terminals
	<gtExample>

	^ self tokens collect: [ :aTokenDictionary | NlpTerminal fromDictionary: aTokenDictionary ].