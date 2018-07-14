api - dependencies
outgoingDependencyNodes
	^ self outgoingDependencies collect: [ :aDependency | aDependency targetNode ] 