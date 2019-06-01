*Moose-Camel
moCaModelClassesAddedSince: aModel
	^ ((self allModelClasses asSet collect: #name) difference: (aModel allModelClasses asSet  collect: #name)) collect: [ :e | self allModelClasses detect: [ :f | f name = e ] ]