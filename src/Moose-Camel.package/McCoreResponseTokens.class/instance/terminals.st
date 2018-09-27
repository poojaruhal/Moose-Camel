copying
terminals
	"Return a collection of terminals from these tokens"
	
	^ self
		collect: [ :aToken | aToken asTerminal ]
		as: Array