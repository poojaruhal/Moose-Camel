examples - response
responseTokensWithoutStopwords
	<gtExample>
	| theTokens theTokensWithoutStopwords |

	theTokens := self responseTokens.
	theTokensWithoutStopwords := theTokens withoutStopwords.
	
	self assert: theTokensWithoutStopwords size equals: 2.

	^ theTokensWithoutStopwords