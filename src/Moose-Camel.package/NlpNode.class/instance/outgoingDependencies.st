as yet unclassified
outgoingDependencies
	^ dependencies select: [ :aDependency | aDependency sourceNode = self ] 