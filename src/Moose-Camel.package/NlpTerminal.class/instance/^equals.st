comparing
= aTerminalNode
	(aTerminalNode isKindOf: NlpTerminal ) 
	ifTrue: [	^ self word = aTerminalNode word ]
