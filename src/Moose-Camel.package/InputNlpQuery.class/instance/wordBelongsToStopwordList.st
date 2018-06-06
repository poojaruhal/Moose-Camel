test-examples
wordBelongsToStopwordList
	<gtExample>
	|aWord result|
	
	aWord := 'are'.
	result := self wordBelongsToStopwordsList: aWord.
	self assert: result.
	
	^result.
