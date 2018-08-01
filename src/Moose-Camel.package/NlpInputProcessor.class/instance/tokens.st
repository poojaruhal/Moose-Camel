gt-examples
tokens
	<gtExample>
	| tokens jsonOutput |
	jsonOutput := self coreNlpResponse.
	tokens := self tokensFrom: jsonOutput.
	^ tokens