instance creation
buildTreeOf: aNonTerminal and: theTerminalStack from: aTree
	"if all items of the `ast` are symbols, we found a terminal node"

	(aTree allSatisfy: #isSymbol)
		ifTrue: [ aNonTerminal add: theTerminalStack pop ]
		ifFalse: [ "otherwuse create a new sub- non-terminal using the first item as a label"
			| aSubNonTerminal |
			aSubNonTerminal := NlpNonTerminal labelled: aTree first.
			"add it to the parent non-terminal node"
			aNonTerminal add: aSubNonTerminal.
			"and repeat the recursion step with all items except the first which is our label"
			aTree allButFirstDo: [ :aSubTree |
				self buildTreeOf: aSubNonTerminal and: theTerminalStack from: aSubTree ] ]
	"and therefore pop it out of our terminal stack"