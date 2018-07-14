api - dependencies
outgoingDependencies
	^ dependencies select: [ :aDependency | aDependency sourceNode = self ] 