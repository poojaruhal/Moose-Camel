api - dependencies
outgoingDependencyNodes
	<return: #Collection of: #NlpNode>

	^ self outgoingDependencies collect: [ :aDependency | aDependency targetNode ] 