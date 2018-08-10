comparing
= aTerminalNode
	self == aTerminalNode
		ifTrue: [ ^ true ].

	self species = aTerminalNode species
		ifFalse: [ ^ false ].

	^ self index = aTerminalNode index
			and: [ self start = aTerminalNode start
				and: [ self word = aTerminalNode word ] ]