test-examples
parse
	<gtExample>
	| parse jsonOutput |
	jsonOutput := self collectCoreNlpResponseDummy.
	parse := self getParse: jsonOutput.
	^ parse