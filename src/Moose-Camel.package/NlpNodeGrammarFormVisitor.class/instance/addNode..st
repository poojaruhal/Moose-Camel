adding
addNode: aTerminalNode
	(self stopwordsList includes: aTerminalNode word)
		ifTrue: [ ^ self ].

	grammarForm addNode: aTerminalNode
		
		