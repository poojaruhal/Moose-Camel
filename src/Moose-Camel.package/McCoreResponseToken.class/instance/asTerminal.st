converting
asTerminal
	"Convert me to a terminal AST node"
	<return: #NlpTerminal>

	^ McaTerminal fromToken: self