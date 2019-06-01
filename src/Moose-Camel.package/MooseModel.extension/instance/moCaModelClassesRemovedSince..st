*Moose-Camel
moCaModelClassesRemovedSince: aModel
	^ ((aModel allModelClasses asSet collect: #name) difference: (self allModelClasses asSet  collect: #name)) collect: [ :e | aModel allModelClasses detect: [ :f | f name = e ] ]