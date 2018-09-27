examples - tokens
terminalsFromTokensWithoutStopwords
	<gtExample>
	| theTokens theTerminals |
	
	theTokens := NlpCoreResponseExamples new responseTokensWithoutStopwords.
	theTerminals := theTokens terminals.
	self assert: theTerminals size equals: 2.

	^ theTerminals