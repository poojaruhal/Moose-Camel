test-examples
processlemmaForm
	<gtExample>
	| theLemmaForm |
	
	theLemmaForm := self lemmaForm.
	self halt.
	self processLemmaForm: theLemmaForm.
	
	^ self