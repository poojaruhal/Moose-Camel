api - dependencies
addDependency: aDependency

	self
		assert: [ aDependency isNotNil ]
		description: [ 'Dependency must no be nil' ].
		
	self
		assert: [ (self dependencies includes: aDependency) not ]
		description: [ 'Dependency must not already exist' ].

	self dependencies add: aDependency