*Moose-Camel
moCaModelPackagesAddedSince: aModel
	^ ((self allModelPackages asSet collect: #name)
		difference: (aModel allModelPackages asSet collect: #name))
		collect: [ :e | self allModelPackages detect: [ :f | f name = e ] ]