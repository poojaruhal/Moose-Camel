test-examples
tokens
	<gtExample>
	| tokens jsonOutput |
	jsonOutput := self collectCoreNlpResponseDummy.
	tokens := self getTokens: jsonOutput.
	^ tokens