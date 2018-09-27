examples - ast
astWithDependencies
	<gtExample>
	| aResponce theAST |
	
	aResponce := NlpCoreResponseExamples new responseFromParsedJson.
	theAST := aResponce ast.
	
	^ theAST