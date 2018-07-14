api - enumerating
allTerminalsDo: aBlock
	self nodes do:[:eachNode | eachNode allTerminalsDo: aBlock]