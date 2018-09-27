examples - instance creation
emptyQuery
	<gtExample>
	| aQuery |
	aQuery := NlpQuery new.
	self assert: aQuery steps isEmpty.
	
	^ aQuery