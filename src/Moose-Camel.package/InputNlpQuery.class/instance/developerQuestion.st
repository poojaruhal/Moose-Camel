test-examples
developerQuestion

	<gtExample>
	|aQuery|
	aQuery := 'Which are the deprecated class'.
	self class query: aQuery.
	self assert: aQuery equals: self class query. 
	
	^aQuery.

