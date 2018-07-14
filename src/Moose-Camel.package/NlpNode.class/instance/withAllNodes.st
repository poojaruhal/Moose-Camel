api - accessing
withAllNodes
	^ Array streamContents: [ :aStream | self allNodesDo: [ :aNode | aStream nextPut: aNode ] ]