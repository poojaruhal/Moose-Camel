*Moose-Camel
moCaModelPackagesSameSince: aModel
	^ ((self allModelPackages asSet collect: #name)
		intersection: (aModel allModelPackages asSet collect: #name))
		collect: [ :e | self allModelPackages detect: [ :f | f name = e ] ]