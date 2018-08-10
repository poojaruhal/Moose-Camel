comparing
= aNonTerminalNode
	self == aNonTerminalNode
		ifTrue: [ ^ true ].

	self species = aNonTerminalNode species
		ifFalse: [ ^ false ].

	^ self nodes = aNonTerminalNode nodes