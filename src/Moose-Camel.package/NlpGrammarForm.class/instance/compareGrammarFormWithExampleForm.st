gt-examples
compareGrammarFormWithExampleForm
	<gtExample>
	|exampleForm grammarFrom|
	
	exampleForm:= self exampleGrammarForm.
	
	grammarFrom := self grammarForm.
	
 	^ grammarFrom calculateDistanceWith: exampleForm.

	
	" ^ self assert: grammarFrom equals: exampleForm."
	

	
	