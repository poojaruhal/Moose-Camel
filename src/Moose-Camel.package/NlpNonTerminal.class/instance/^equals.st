comparing
= aNonTerminalNode
	 (self label = aNonTerminalNode label)
		ifTrue:[^((self hasParent) and: (self parent = aNonTerminalNode parent))].