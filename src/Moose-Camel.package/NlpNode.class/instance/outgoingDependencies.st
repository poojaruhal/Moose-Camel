api - dependencies
outgoingDependencies
	<return: #Collection of: #NlpDependency>

	^ dependencies select: [ :aDependency | aDependency sourceNode = self ] 