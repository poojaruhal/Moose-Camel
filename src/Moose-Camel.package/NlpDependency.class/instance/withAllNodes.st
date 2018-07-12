accessing
withAllNodes
	^ Array streamContents: [ :aStream | self allNodesDo: [ :aDepedencyNode | aStream nextPut: aDepedencyNode ]]