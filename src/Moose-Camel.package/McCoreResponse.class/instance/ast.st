api - response
ast
	"Create and return terminal nodes from tokens of this response"
	<return: #Array of: #McaTerminal>
	| theAST |
	
	theAST := McaNode
		ast: self terminals
		from: self parse.
		
	McaDependency createDependencies: self basicDependencies from: theAST.
	
	^ theAST