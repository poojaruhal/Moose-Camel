test-examples
parse
	<gtExample>
	| parse jsonOutput |
	jsonOutput := self collectCoreNlpResponse.
	parse := self getParse: jsonOutput.
	^ parse