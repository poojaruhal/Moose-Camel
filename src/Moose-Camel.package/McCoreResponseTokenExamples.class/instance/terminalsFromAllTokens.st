examples - tokens
terminalsFromAllTokens
	<gtExample>
	| theTokens theTerminals |

	theTokens := NlpCoreResponseExamples new responseTokens.
	theTerminals := theTokens terminals.
	self assert: theTerminals size equals: 5.

	^ theTerminals