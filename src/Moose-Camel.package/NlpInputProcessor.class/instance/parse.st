gt-examples
parse
	<gtExample>
	| parsedTree jsonOutput |
	jsonOutput := self coreNlpResponse.
	parsedTree  := self parseFrom: jsonOutput.
	^ parsedTree 