examples - tokens
terminalsFromTokensWithoutStopwords
	<gtExample>
	| theTokens theTerminals |
	
	theTokens := McCoreResponseExamples new responseTokensWithoutStopwords.
	theTerminals := theTokens terminals.
	self assert: theTerminals size equals: 2.

	^ theTerminals