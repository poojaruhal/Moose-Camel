test-examples
tokens
	<gtExample>
	| tokens jsonOutput |
	jsonOutput := self collectCoreNlpResponse.
	tokens:= self getTokens: jsonOutput.
	^ tokens