api - enumerating
allNodesDo: aBlock
	aBlock value: self.

	self nodes do: [ :aNode | aNode allNodesDo: aBlock ]