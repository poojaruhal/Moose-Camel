test-examples
processlemmaForm
	<gtExample>
	| theLemmaForm |
	
	theLemmaForm := self lemmaForm.
	self processLemmaForm: theLemmaForm.
	
	^ self