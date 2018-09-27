api - response
ast
	"Create and return terminal nodes from tokens of this response"
	<return: #Array of: #NlpTerminal>
	| theAST |
	
	theAST := NlpNode
		ast: self terminals
		from: self parse.
		
	NlpDependency createDependencies: self basicDependencies from: theAST.
	
	^ theAST