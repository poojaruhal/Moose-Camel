gt-examples
compareGrammarFormWithExampleForm
	<gtExample>
	|exampleForm grammarFromUsingAst|
	
	exampleForm:= self exampleGrammarFormOfDeveloperQuestion.
	
	grammarFromUsingAst := self exampleGrammarFormOfDeveloperQuestionUsingAst.
	
	 self assert: grammarFromUsingAst equals: exampleForm.
	
	^ grammarFromUsingAst
	
	