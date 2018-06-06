test-examples
developerQuestion

	<gtExample>
	|aQuery|
	aQuery := 'What are the deprecated class'.
	self class query: aQuery.
	self assert: aQuery equals: self class query. 
	
	^aQuery.

