examples - instance creation
emptyQuery
	<gtExample>
	| aQuery |
	aQuery := McQuery new.
	self assert: aQuery steps isEmpty.
	
	^ aQuery