api - accessing
withAllNodes
	<return: #Collection of: #NlpNode>

	^ Array streamContents: [ :aStream | self allNodesDo: [ :aNode | aStream nextPut: aNode ] ]