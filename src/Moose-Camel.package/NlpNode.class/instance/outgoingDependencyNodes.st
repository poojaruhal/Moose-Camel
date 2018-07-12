as yet unclassified
outgoingDependencyNodes
	^ self outgoingDependencies collect: [ :aDependency | aDependency targetNode ] 