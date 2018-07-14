accessing
terminalAt: anIndex ifFound: aFoundBlock ifNone: aNoneBlock
	(anIndex isZero)
		ifTrue: [ ^ aFoundBlock value:self ].
	self allTerminalsDo: [:aTerminalNode | (anIndex = aTerminalNode index)
		 ifTrue: [^ aFoundBlock value:aTerminalNode ] ].
	^ aNoneBlock value