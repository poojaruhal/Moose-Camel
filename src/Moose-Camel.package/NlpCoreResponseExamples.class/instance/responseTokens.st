examples - response
responseTokens
	<gtExample>
	| aResponse theTokens |

	aResponse := self responseFromParsedJson.
	theTokens := aResponse tokens.

	self assert: theTokens size equals: 5.

	^ theTokens