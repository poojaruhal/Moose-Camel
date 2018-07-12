as yet unclassified
incomingDependencies
	^ dependencies select: [ :aDependency | aDependency targetNode = self ] 