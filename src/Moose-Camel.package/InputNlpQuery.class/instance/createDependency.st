test-examples
createDependency
	<gtExample>
	| basicDependencies anAst |
	basicDependencies := self basicDependencies.
	anAst := self ast.
	NlpDependency createDependencies: basicDependencies from: anAst.
	^ anAst