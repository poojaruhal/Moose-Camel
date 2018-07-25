tests
testEvaluateParanthesis
	<gtExample>
	|aParser|
	
	aParser := self evaluateParanthesis asParser.
	aParser parse: '(234+345)'.
	
	