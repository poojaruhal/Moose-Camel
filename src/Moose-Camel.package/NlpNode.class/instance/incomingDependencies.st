api - dependencies
incomingDependencies
	<return: #Collection of: #NlpDependency>

	^ dependencies select: [ :aDependency | aDependency targetNode = self ] 