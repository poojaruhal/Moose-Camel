*Moose-Camel
moCaModelClassesSameSince: aModel
	^ ((self allModelClasses asSet collect: #name)
		intersection: (aModel allModelClasses asSet collect: #name))
		collect: [ :e | self allModelClasses detect: [ :f | f name = e ] ]