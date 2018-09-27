converting
asTerminal
	"Convert me to a terminal AST node"
	<return: #NlpTerminal>

	^ NlpTerminal fromToken: self