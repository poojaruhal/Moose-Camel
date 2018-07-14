api - dependencies
incomingDependencies
	^ dependencies select: [ :aDependency | aDependency targetNode = self ] 