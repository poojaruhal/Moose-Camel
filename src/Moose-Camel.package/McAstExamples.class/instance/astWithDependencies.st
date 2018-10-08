examples - ast
astWithDependencies
	<gtExample>
	| aResponce theAST |
	
	aResponce := McCoreResponseExamples new responseFromParsedJson.
	theAST := aResponce ast.
	
	^ theAST